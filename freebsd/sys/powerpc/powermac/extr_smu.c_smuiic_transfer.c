
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct smuiic_softc {int sc_iic_inuse; int sc_busno; int sc_mtx; } ;
struct smu_cmd {int* data; int len; void* cmd; } ;
struct iic_msg {int flags; int slave; int len; int* buf; } ;
typedef int device_t ;


 int EIO ;
 int IIC_M_NOSTOP ;
 int IIC_M_RD ;
 int KASSERT (int,char*) ;
 void* SMU_I2C ;
 int SMU_I2C_COMBINED ;
 int SMU_I2C_SIMPLE ;
 int device_get_parent (int ) ;
 struct smuiic_softc* device_get_softc (int ) ;
 int memcpy (int*,int*,int) ;
 int memset (int*,int,int) ;
 int min (int,int) ;
 int mtx_lock (int *) ;
 int mtx_sleep (struct smuiic_softc*,int *,int ,char*,int) ;
 int mtx_unlock (int *) ;
 int smu_run_cmd (int ,struct smu_cmd*,int) ;
 int wakeup (struct smuiic_softc*) ;

__attribute__((used)) static int
smuiic_transfer(device_t dev, struct iic_msg *msgs, uint32_t nmsgs)
{
 struct smuiic_softc *sc = device_get_softc(dev);
 struct smu_cmd cmd;
 int i, j, error;

 mtx_lock(&sc->sc_mtx);
 while (sc->sc_iic_inuse)
  mtx_sleep(sc, &sc->sc_mtx, 0, "smuiic", 100);

 sc->sc_iic_inuse = 1;
 error = 0;

 for (i = 0; i < nmsgs; i++) {
  cmd.cmd = SMU_I2C;
  cmd.data[0] = sc->sc_busno;
  if (msgs[i].flags & IIC_M_NOSTOP)
   cmd.data[1] = SMU_I2C_COMBINED;
  else
   cmd.data[1] = SMU_I2C_SIMPLE;

  cmd.data[2] = msgs[i].slave;
  if (msgs[i].flags & IIC_M_RD)
   cmd.data[2] |= 1;

  if (msgs[i].flags & IIC_M_NOSTOP) {
   KASSERT(msgs[i].len < 4,
       ("oversize I2C combined message"));

   cmd.data[3] = min(msgs[i].len, 3);
   memcpy(&cmd.data[4], msgs[i].buf, min(msgs[i].len, 3));
   i++;
  } else {
   cmd.data[3] = 0;
   memset(&cmd.data[4], 0, 3);
  }

  cmd.data[7] = msgs[i].slave;
  if (msgs[i].flags & IIC_M_RD)
   cmd.data[7] |= 1;

  cmd.data[8] = msgs[i].len;
  if (msgs[i].flags & IIC_M_RD) {
   memset(&cmd.data[9], 0xff, msgs[i].len);
   cmd.len = 9;
  } else {
   memcpy(&cmd.data[9], msgs[i].buf, msgs[i].len);
   cmd.len = 9 + msgs[i].len;
  }

  mtx_unlock(&sc->sc_mtx);
  smu_run_cmd(device_get_parent(dev), &cmd, 1);
  mtx_lock(&sc->sc_mtx);

  for (j = 0; j < 10; j++) {
   cmd.cmd = SMU_I2C;
   cmd.len = 1;
   cmd.data[0] = 0;
   memset(&cmd.data[1], 0xff, msgs[i].len);

   mtx_unlock(&sc->sc_mtx);
   smu_run_cmd(device_get_parent(dev), &cmd, 1);
   mtx_lock(&sc->sc_mtx);

   if (!(cmd.data[0] & 0x80))
    break;

   mtx_sleep(sc, &sc->sc_mtx, 0, "smuiic", 10);
  }

  if (cmd.data[0] & 0x80) {
   error = EIO;
   msgs[i].len = 0;
   goto exit;
  }
  memcpy(msgs[i].buf, &cmd.data[1], msgs[i].len);
  msgs[i].len = cmd.len - 1;
 }

    exit:
 sc->sc_iic_inuse = 0;
 mtx_unlock(&sc->sc_mtx);
 wakeup(sc);
 return (error);
}
