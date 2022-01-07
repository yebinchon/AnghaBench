
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_softc {int vmbus_xc; } ;
struct vmbus_message {int dummy; } ;


 int vmbus_xact_ctx_wakeup (int ,struct vmbus_message const*,int) ;

void
vmbus_msghc_wakeup(struct vmbus_softc *sc, const struct vmbus_message *msg)
{

 vmbus_xact_ctx_wakeup(sc->vmbus_xc, msg, sizeof(*msg));
}
