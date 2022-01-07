
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int max_cmds; int state; int timer; int dev; scalar_t__ (* ips_adapter_reinit ) (TYPE_1__*,int) ;TYPE_2__* commandarray; int queue_mtx; } ;
typedef TYPE_1__ ips_softc_t ;
struct TYPE_8__ {int (* callback ) (TYPE_2__*) ;int timeout; } ;
typedef TYPE_2__ ips_command_t ;


 int ETIMEDOUT ;
 int IPS_OFFLINE ;
 int IPS_TIMEOUT ;
 int MA_OWNED ;
 int callout_reset (int *,int,void (*) (void*),TYPE_1__*) ;
 int device_printf (int ,char*) ;
 int hz ;
 int ips_set_error (TYPE_2__*,int ) ;
 int mtx_assert (int *,int ) ;
 int stub1 (TYPE_2__*) ;
 scalar_t__ stub2 (TYPE_1__*,int) ;

__attribute__((used)) static void ips_timeout(void *arg)
{
 ips_softc_t *sc = arg;
 int i, state = 0;
 ips_command_t *command;

 mtx_assert(&sc->queue_mtx, MA_OWNED);
 command = &sc->commandarray[0];
 for(i = 0; i < sc->max_cmds; i++){
  if(!command[i].timeout){
   continue;
  }
  command[i].timeout--;
  if(!command[i].timeout){
   if(!(sc->state & IPS_TIMEOUT)){
    sc->state |= IPS_TIMEOUT;
    device_printf(sc->dev, "WARNING: command timeout. Adapter is in toaster mode, resetting to known state\n");
   }
   ips_set_error(&command[i], ETIMEDOUT);
   command[i].callback(&command[i]);

  } else
   state = 1;
 }
 if(!state && (sc->state & IPS_TIMEOUT)){
  if(sc->ips_adapter_reinit(sc, 1)){
   device_printf(sc->dev, "AIEE! adapter reset failed, giving up and going home! Have a nice day.\n");
   sc->state |= IPS_OFFLINE;
   sc->state &= ~IPS_TIMEOUT;



  } else
   sc->state &= ~IPS_TIMEOUT;
 }
 if (sc->state != IPS_OFFLINE)
  callout_reset(&sc->timer, 10 * hz, ips_timeout, sc);
}
