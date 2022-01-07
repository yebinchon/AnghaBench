
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct iop_softc {int obase; int phys_obase; int mtx; TYPE_1__* reg; } ;
struct i2o_util_event_reply_message {int event_mask; int* event_data; } ;
struct i2o_single_reply {scalar_t__ function; int message_flags; scalar_t__ initiator_context; } ;
struct i2o_fault_reply {int preserved_mfa; } ;
struct TYPE_2__ {int oqueue; } ;


 int I2O_MESSAGE_FLAGS_FAIL ;
 scalar_t__ I2O_UTIL_EVENT_REGISTER ;
 int iop_free_mfa (struct iop_softc*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*,int,int) ;
 void stub1 (struct iop_softc*,int,struct i2o_single_reply*) ;

void
iop_intr(void *data)
{
    struct iop_softc *sc = (struct iop_softc *)data;
    struct i2o_single_reply *reply;
    u_int32_t mfa;


    mtx_lock(&sc->mtx);
    while (1) {
 if ((mfa = sc->reg->oqueue) == 0xffffffff)
     if ((mfa = sc->reg->oqueue) == 0xffffffff)
  break;

 reply = (struct i2o_single_reply *)(sc->obase + (mfa - sc->phys_obase));


 if (reply->function == I2O_UTIL_EVENT_REGISTER) {
     struct i2o_util_event_reply_message *event =
  (struct i2o_util_event_reply_message *)reply;

     printf("pstiop: EVENT!! idx=%08x data=%08x\n",
     event->event_mask, event->event_data[0]);
     break;
 }


 if (reply->message_flags & I2O_MESSAGE_FLAGS_FAIL)
     iop_free_mfa(sc,((struct i2o_fault_reply *)(reply))->preserved_mfa);


 ((void (*)(struct iop_softc *, u_int32_t, struct i2o_single_reply *))
     (reply->initiator_context))(sc, mfa, reply);
    }
    mtx_unlock(&sc->mtx);
}
