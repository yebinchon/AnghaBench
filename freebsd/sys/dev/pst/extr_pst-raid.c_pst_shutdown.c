
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pst_softc {TYPE_2__* iop; TYPE_1__* lct; } ;
struct i2o_bsa_cache_flush_message {int version_offset; int message_flags; int message_size; int control_flags; int function; int initiator_address; int target_address; } ;
struct i2o_basic_message {int dummy; } ;
typedef int device_t ;
struct TYPE_5__ {scalar_t__ ibase; } ;
struct TYPE_4__ {int local_tid; } ;


 int I2O_BSA_CACHE_FLUSH ;
 int I2O_TID_HOST ;
 int bzero (struct i2o_bsa_cache_flush_message*,int) ;
 struct pst_softc* device_get_softc (int ) ;
 int iop_get_mfa (TYPE_2__*) ;
 scalar_t__ iop_queue_wait_msg (TYPE_2__*,int,struct i2o_basic_message*) ;
 int printf (char*) ;

__attribute__((used)) static int
pst_shutdown(device_t dev)
{
    struct pst_softc *psc = device_get_softc(dev);
    struct i2o_bsa_cache_flush_message *msg;
    int mfa;

    mfa = iop_get_mfa(psc->iop);
    msg = (struct i2o_bsa_cache_flush_message *)(psc->iop->ibase + mfa);
    bzero(msg, sizeof(struct i2o_bsa_cache_flush_message));
    msg->version_offset = 0x01;
    msg->message_flags = 0x0;
    msg->message_size = sizeof(struct i2o_bsa_cache_flush_message) >> 2;
    msg->target_address = psc->lct->local_tid;
    msg->initiator_address = I2O_TID_HOST;
    msg->function = I2O_BSA_CACHE_FLUSH;
    msg->control_flags = 0x0;
    if (iop_queue_wait_msg(psc->iop, mfa, (struct i2o_basic_message *)msg))
 printf("pst: shutdown failed!\n");
    return 0;
}
