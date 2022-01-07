
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct thread {int dummy; } ;
struct pwmc_softc {int chan; int dev; } ;
struct pwm_state {int enable; int duty; int period; } ;
struct cdev {struct pwmc_softc* si_drv1; } ;
typedef int state ;
typedef int device_t ;
typedef struct pwm_state* caddr_t ;


 int PWMBUS_CHANNEL_CONFIG (int ,int ,int ,int ) ;
 int PWMBUS_CHANNEL_ENABLE (int ,int ,int ) ;
 int PWMBUS_CHANNEL_GET_CONFIG (int ,int ,int *,int *) ;
 int PWMBUS_CHANNEL_IS_ENABLED (int ,int ,int *) ;


 int bcopy (struct pwm_state*,struct pwm_state*,int) ;
 int device_get_parent (int ) ;

__attribute__((used)) static int
pwm_ioctl(struct cdev *dev, u_long cmd, caddr_t data,
    int fflag, struct thread *td)
{
 struct pwmc_softc *sc;
 struct pwm_state state;
 device_t bus;
 int rv = 0;

 sc = dev->si_drv1;
 bus = device_get_parent(sc->dev);

 switch (cmd) {
 case 128:
  bcopy(data, &state, sizeof(state));
  rv = PWMBUS_CHANNEL_CONFIG(bus, sc->chan,
      state.period, state.duty);
  if (rv == 0)
   rv = PWMBUS_CHANNEL_ENABLE(bus, sc->chan,
       state.enable);
  break;
 case 129:
  bcopy(data, &state, sizeof(state));
  rv = PWMBUS_CHANNEL_GET_CONFIG(bus, sc->chan,
      &state.period, &state.duty);
  if (rv != 0)
   return (rv);
  rv = PWMBUS_CHANNEL_IS_ENABLED(bus, sc->chan,
      &state.enable);
  if (rv != 0)
   return (rv);
  bcopy(&state, data, sizeof(state));
  break;
 }

 return (rv);
}
