
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iop_softc {int lct_count; int lct; scalar_t__ ibase; } ;
struct i2o_lct_entry {int dummy; } ;
struct i2o_get_lct_reply {int table_size; int * entry; } ;
struct TYPE_2__ {int flags; int * phys_addr; int count; } ;
struct i2o_exec_get_lct_message {int version_offset; int message_flags; int message_size; TYPE_1__ sgl; scalar_t__ last_change_id; int class; int function; int initiator_address; int target_address; } ;
struct i2o_basic_message {int dummy; } ;


 int ALLOCSIZE ;
 int I2O_CLASS_MATCH_ANYCLASS ;
 int I2O_EXEC_LCT_NOTIFY ;
 int I2O_SGL_END ;
 int I2O_SGL_EOB ;
 int I2O_SGL_SIMPLE ;
 int I2O_TID_HOST ;
 int I2O_TID_IOP ;
 int M_NOWAIT ;
 int M_PSTIOP ;
 int M_ZERO ;
 int PAGE_SIZE ;
 int bcopy (int *,int ,int) ;
 int bzero (struct i2o_exec_get_lct_message*,int) ;
 int contigfree (struct i2o_get_lct_reply*,int ,int ) ;
 struct i2o_get_lct_reply* contigmalloc (int ,int ,int,int,int,int ,int ) ;
 int iop_get_mfa (struct iop_softc*) ;
 scalar_t__ iop_queue_wait_msg (struct iop_softc*,int,struct i2o_basic_message*) ;
 int malloc (int,int ,int) ;
 int vtophys (struct i2o_get_lct_reply*) ;

int
iop_get_lct(struct iop_softc *sc)
{
    struct i2o_exec_get_lct_message *msg;
    struct i2o_get_lct_reply *reply;
    int mfa;


    if (!(reply = contigmalloc((PAGE_SIZE + (256 * sizeof(struct i2o_lct_entry))), M_PSTIOP, M_NOWAIT | M_ZERO,
          0x00010000, 0xFFFFFFFF, PAGE_SIZE, 0)))
 return 0;

    mfa = iop_get_mfa(sc);
    msg = (struct i2o_exec_get_lct_message *)(sc->ibase + mfa);
    bzero(msg, sizeof(struct i2o_exec_get_lct_message));
    msg->version_offset = 0x61;
    msg->message_flags = 0x0;
    msg->message_size = sizeof(struct i2o_exec_get_lct_message) >> 2;
    msg->target_address = I2O_TID_IOP;
    msg->initiator_address = I2O_TID_HOST;
    msg->function = I2O_EXEC_LCT_NOTIFY;
    msg->class = I2O_CLASS_MATCH_ANYCLASS;
    msg->last_change_id = 0;

    msg->sgl.flags = I2O_SGL_SIMPLE | I2O_SGL_END | I2O_SGL_EOB;
    msg->sgl.count = (PAGE_SIZE + (256 * sizeof(struct i2o_lct_entry)));
    msg->sgl.phys_addr[0] = vtophys(reply);

    if (iop_queue_wait_msg(sc, mfa, (struct i2o_basic_message *)msg)) {
 contigfree(reply, (PAGE_SIZE + (256 * sizeof(struct i2o_lct_entry))), M_PSTIOP);
 return 0;
    }
    if (!(sc->lct = malloc(reply->table_size * sizeof(struct i2o_lct_entry),
      M_PSTIOP, M_NOWAIT | M_ZERO))) {
 contigfree(reply, (PAGE_SIZE + (256 * sizeof(struct i2o_lct_entry))), M_PSTIOP);
 return 0;
    }
    bcopy(&reply->entry[0], sc->lct,
   reply->table_size * sizeof(struct i2o_lct_entry));
    sc->lct_count = reply->table_size;
    contigfree(reply, (PAGE_SIZE + (256 * sizeof(struct i2o_lct_entry))), M_PSTIOP);
    return 1;
}
