
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iop_softc {TYPE_1__* reg; scalar_t__ ibase; } ;
struct i2o_basic_message {int version; int message_flags; int message_size; int function; int initiator_address; int target_address; } ;
struct TYPE_2__ {int iqueue; } ;


 int I2O_TID_HOST ;
 int I2O_TID_IOP ;
 int I2O_UTIL_NOP ;
 int bzero (struct i2o_basic_message*,int) ;

void
iop_free_mfa(struct iop_softc *sc, int mfa)
{
    struct i2o_basic_message *msg = (struct i2o_basic_message *)(sc->ibase+mfa);

    bzero(msg, sizeof(struct i2o_basic_message));
    msg->version = 0x01;
    msg->message_flags = 0x0;
    msg->message_size = sizeof(struct i2o_basic_message) >> 2;
    msg->target_address = I2O_TID_IOP;
    msg->initiator_address = I2O_TID_HOST;
    msg->function = I2O_UTIL_NOP;
    sc->reg->iqueue = mfa;
}
