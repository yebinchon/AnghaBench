
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cyapa_softc {int poll_thread_running; scalar_t__ count; int poll_ticks; int dev; int detaching; } ;
struct cyapa_regs {int stat; } ;
typedef int regs ;
typedef int device_t ;


 int CMD_DEV_STATUS ;



 int CYAPA_STAT_RUNNING ;
 int IIC_WAIT ;
 unsigned int TIME_TO_RESET ;
 scalar_t__ cyapa_debug ;
 int cyapa_idle_freq ;
 int cyapa_lock (struct cyapa_softc*) ;
 int cyapa_norm_freq ;
 int cyapa_raw_input (struct cyapa_softc*,struct cyapa_regs*,int) ;
 int cyapa_read_bytes (int ,int ,void*,int) ;
 scalar_t__ cyapa_reset ;
 int cyapa_set_power_mode (struct cyapa_softc*,int) ;
 int cyapa_slow_freq ;
 int cyapa_unlock (struct cyapa_softc*) ;
 int device_get_parent (int ) ;
 int hz ;
 int iicbus_release_bus (int ,int ) ;
 int iicbus_request_bus (int ,int ,int ) ;
 int init_device (int ,int *,int) ;
 int kthread_exit () ;
 int pause (char*,int) ;
 int printf (char*) ;
 int ticks ;

__attribute__((used)) static void
cyapa_poll_thread(void *arg)
{
 struct cyapa_softc *sc;
 struct cyapa_regs regs;
 device_t bus;
 int error;
 int freq;
 int isidle;
 int pstate;
 int npstate;
 int last_reset;

 sc = arg;
 freq = cyapa_norm_freq;
 isidle = 0;
 pstate = 129;
 last_reset = ticks;

 bus = device_get_parent(sc->dev);

 cyapa_lock(sc);
 sc->poll_thread_running = 1;

 while (!sc->detaching) {
  cyapa_unlock(sc);
  error = iicbus_request_bus(bus, sc->dev, IIC_WAIT);
  if (error == 0) {
   error = cyapa_read_bytes(sc->dev, CMD_DEV_STATUS,
       (void *)&regs, sizeof(regs));
   if (error == 0) {
    isidle = cyapa_raw_input(sc, &regs, freq);
   }






   if (cyapa_reset ||
       ((regs.stat & CYAPA_STAT_RUNNING) == 0 &&
        (unsigned)(ticks - last_reset) > TIME_TO_RESET)) {
    cyapa_reset = 0;
    last_reset = ticks;
    init_device(sc->dev, ((void*)0), 2);
   }
   iicbus_release_bus(bus, sc->dev);
  }
  pause("cyapw", hz / freq);
  ++sc->poll_ticks;

  if (sc->count == 0) {
   freq = cyapa_idle_freq;
   npstate = 129;
  } else if (isidle) {
   freq = cyapa_slow_freq;
   npstate = 129;
  } else {
   freq = cyapa_norm_freq;
   npstate = 130;
  }
  if (pstate != npstate) {
   pstate = npstate;
   cyapa_set_power_mode(sc, pstate);
   if (cyapa_debug) {
    switch(pstate) {
    case 128:
     printf("cyapa: power off\n");
     break;
    case 129:
     printf("cyapa: power idle\n");
     break;
    case 130:
     printf("cyapa: power full\n");
     break;
    }
   }
  }

  cyapa_lock(sc);
 }
 sc->poll_thread_running = 0;
 cyapa_unlock(sc);
 kthread_exit();
}
