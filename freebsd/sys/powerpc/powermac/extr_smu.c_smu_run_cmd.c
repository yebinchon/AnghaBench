
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct smu_softc {scalar_t__ sc_doorbellirqid; int sc_mtx; int sc_cmdq; struct smu_cmd* sc_cur_cmd; } ;
struct smu_cmd {int cmd; } ;
typedef int device_t ;


 int DELAY (int) ;
 int EIO ;
 int STAILQ_INSERT_TAIL (int *,struct smu_cmd*,int ) ;
 int STAILQ_REMOVE (int *,struct smu_cmd*,int ,int ) ;
 int cmd_q ;
 struct smu_softc* device_get_softc (int ) ;
 int hz ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int smu_cmd ;
 int smu_doorbell_intr (int ) ;
 int smu_send_cmd (int ,struct smu_cmd*) ;
 int tsleep (struct smu_cmd*,int ,char*,int) ;

__attribute__((used)) static int
smu_run_cmd(device_t dev, struct smu_cmd *cmd, int wait)
{
 struct smu_softc *sc;
 uint8_t cmd_code;
 int error;

 sc = device_get_softc(dev);
 cmd_code = cmd->cmd;

 mtx_lock(&sc->sc_mtx);
 if (sc->sc_cur_cmd != ((void*)0)) {
  STAILQ_INSERT_TAIL(&sc->sc_cmdq, cmd, cmd_q);
 } else
  smu_send_cmd(dev, cmd);
 mtx_unlock(&sc->sc_mtx);

 if (!wait)
  return (0);

 if (sc->sc_doorbellirqid < 0) {

  do {
   DELAY(50);
   smu_doorbell_intr(dev);
  } while (sc->sc_cur_cmd != ((void*)0));
 } else {

  error = tsleep(cmd, 0, "smu", 800 * hz / 1000);
  if (error != 0)
   smu_doorbell_intr(dev);

  if (error != 0) {
      mtx_lock(&sc->sc_mtx);
      if (cmd->cmd == cmd_code) {

   if (sc->sc_cur_cmd == cmd)
    sc->sc_cur_cmd = ((void*)0);
   else
    STAILQ_REMOVE(&sc->sc_cmdq, cmd, smu_cmd,
        cmd_q);
   mtx_unlock(&sc->sc_mtx);
   return (error);
      }
      error = 0;
      mtx_unlock(&sc->sc_mtx);
  }
 }


 if (cmd->cmd == ((~cmd_code) & 0xff))
  error = 0;
 else
  error = EIO;

 return (error);
}
