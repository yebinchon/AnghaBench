
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int txbr; } ;
struct TYPE_5__ {int rxbr; } ;
struct sysctl_ctx_list {int dummy; } ;
struct vmbus_channel {int ch_id; int ch_subidx; int ch_cpuid; TYPE_3__ ch_txbr; TYPE_2__ ch_rxbr; TYPE_1__* ch_prichan; int ch_dev; struct sysctl_ctx_list ch_sysctl_ctx; } ;
struct sysctl_oid {int dummy; } ;
typedef int name ;
struct TYPE_4__ {int ch_id; } ;


 int CTLFLAG_MPSAFE ;
 int CTLFLAG_RD ;
 int CTLTYPE_INT ;
 int OID_AUTO ;
 struct sysctl_oid* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,int ,int ,char*,int,int ,char*) ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,int ,int ,char*,int,struct vmbus_channel*,int ,int ,char*,char*) ;
 int SYSCTL_ADD_UINT (struct sysctl_ctx_list*,int ,int ,char*,int,int*,int ,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 scalar_t__ VMBUS_CHAN_ISPRIMARY (struct vmbus_channel*) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int snprintf (char*,int,char*,int) ;
 int sysctl_ctx_init (struct sysctl_ctx_list*) ;
 int vmbus_br_sysctl_create (struct sysctl_ctx_list*,struct sysctl_oid*,int *,char*) ;
 int vmbus_chan_sysctl_mnf ;

__attribute__((used)) static void
vmbus_chan_sysctl_create(struct vmbus_channel *chan)
{
 struct sysctl_oid *ch_tree, *chid_tree, *br_tree;
 struct sysctl_ctx_list *ctx;
 uint32_t ch_id;
 char name[16];







 ctx = &chan->ch_sysctl_ctx;
 sysctl_ctx_init(ctx);




 ch_tree = SYSCTL_ADD_NODE(ctx,
     SYSCTL_CHILDREN(device_get_sysctl_tree(chan->ch_dev)),
     OID_AUTO, "channel", CTLFLAG_RD | CTLFLAG_MPSAFE, 0, "");
 if (ch_tree == ((void*)0))
  return;




 if (VMBUS_CHAN_ISPRIMARY(chan))
  ch_id = chan->ch_id;
 else
  ch_id = chan->ch_prichan->ch_id;
 snprintf(name, sizeof(name), "%d", ch_id);
 chid_tree = SYSCTL_ADD_NODE(ctx, SYSCTL_CHILDREN(ch_tree),
     OID_AUTO, name, CTLFLAG_RD | CTLFLAG_MPSAFE, 0, "");
 if (chid_tree == ((void*)0))
  return;

 if (!VMBUS_CHAN_ISPRIMARY(chan)) {



  ch_tree = SYSCTL_ADD_NODE(ctx, SYSCTL_CHILDREN(chid_tree),
      OID_AUTO, "sub", CTLFLAG_RD | CTLFLAG_MPSAFE, 0, "");
  if (ch_tree == ((void*)0))
   return;







  snprintf(name, sizeof(name), "%d", chan->ch_subidx);
  chid_tree = SYSCTL_ADD_NODE(ctx, SYSCTL_CHILDREN(ch_tree),
      OID_AUTO, name, CTLFLAG_RD | CTLFLAG_MPSAFE, 0, "");
  if (chid_tree == ((void*)0))
   return;

  SYSCTL_ADD_UINT(ctx, SYSCTL_CHILDREN(chid_tree), OID_AUTO,
      "chanid", CTLFLAG_RD, &chan->ch_id, 0, "channel id");
 }

 SYSCTL_ADD_UINT(ctx, SYSCTL_CHILDREN(chid_tree), OID_AUTO,
     "cpu", CTLFLAG_RD, &chan->ch_cpuid, 0, "owner CPU id");
 SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(chid_tree), OID_AUTO,
     "mnf", CTLTYPE_INT | CTLFLAG_RD | CTLFLAG_MPSAFE,
     chan, 0, vmbus_chan_sysctl_mnf, "I",
     "has monitor notification facilities");

 br_tree = SYSCTL_ADD_NODE(ctx, SYSCTL_CHILDREN(chid_tree), OID_AUTO,
     "br", CTLFLAG_RD | CTLFLAG_MPSAFE, 0, "");
 if (br_tree != ((void*)0)) {



  vmbus_br_sysctl_create(ctx, br_tree, &chan->ch_rxbr.rxbr, "rx");



  vmbus_br_sysctl_create(ctx, br_tree, &chan->ch_txbr.txbr, "tx");
 }
}
