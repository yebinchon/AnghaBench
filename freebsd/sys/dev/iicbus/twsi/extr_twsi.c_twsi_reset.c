
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int ;
typedef size_t u_char ;
struct twsi_softc {int mutex; int reg_control; int reg_baud_rate; int reg_soft_reset; TYPE_1__* baud_rate; int iicbus; } ;
typedef int device_t ;
struct TYPE_2__ {int param; } ;


 int DELAY (int) ;
 int IICBUS_GET_FREQUENCY (int ,size_t) ;




 int TWSI_CONTROL_TWSIEN ;
 int TWSI_WRITE (struct twsi_softc*,int ,int) ;
 int debugf (int ,char*,int) ;
 struct twsi_softc* device_get_softc (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int twsi_calc_baud_rate (struct twsi_softc*,int ,int*) ;

__attribute__((used)) static int
twsi_reset(device_t dev, u_char speed, u_char addr, u_char *oldaddr)
{
 struct twsi_softc *sc;
 uint32_t param;




 sc = device_get_softc(dev);






  switch (speed) {
  case 129:
  case 131:
   param = sc->baud_rate[speed].param;
   debugf(dev, "Using IIC_FAST mode with speed param=%x\n", param);
   break;
  case 130:
  case 128:
  default:
   param = sc->baud_rate[131].param;
   debugf(dev, "Using IIC_FASTEST/UNKNOWN mode with speed param=%x\n", param);
   break;
  }




 debugf(dev, "Using clock param=%x\n", param);

 mtx_lock(&sc->mutex);
 TWSI_WRITE(sc, sc->reg_soft_reset, 0x0);
 TWSI_WRITE(sc, sc->reg_baud_rate, param);
 TWSI_WRITE(sc, sc->reg_control, TWSI_CONTROL_TWSIEN);
 DELAY(1000);
 mtx_unlock(&sc->mutex);

 return (0);
}
