
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct TYPE_2__ {int * chan_send_cnt; int data_sg_cnt; int data_vaddr_cnt; int data_bio_cnt; } ;
struct storvsc_softc {int hs_nchan; TYPE_1__ sysctl_data; int * hs_sel_chan; } ;
typedef int name ;
typedef int device_t ;


 int CTLFLAG_MPSAFE ;
 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int OID_AUTO ;
 struct sysctl_oid* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,int ,char*) ;
 int SYSCTL_ADD_ULONG (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,int *,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 struct storvsc_softc* device_get_softc (int ) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int snprintf (char*,int,char*,int) ;
 int vmbus_chan_id (int ) ;

__attribute__((used)) static void
storvsc_sysctl(device_t dev)
{
 struct sysctl_oid_list *child;
 struct sysctl_ctx_list *ctx;
 struct sysctl_oid *ch_tree, *chid_tree;
 struct storvsc_softc *sc;
 char name[16];
 int i;

 sc = device_get_softc(dev);
 ctx = device_get_sysctl_ctx(dev);
 child = SYSCTL_CHILDREN(device_get_sysctl_tree(dev));

 SYSCTL_ADD_ULONG(ctx, child, OID_AUTO, "data_bio_cnt", CTLFLAG_RW,
  &sc->sysctl_data.data_bio_cnt, "# of bio data block");
 SYSCTL_ADD_ULONG(ctx, child, OID_AUTO, "data_vaddr_cnt", CTLFLAG_RW,
  &sc->sysctl_data.data_vaddr_cnt, "# of vaddr data block");
 SYSCTL_ADD_ULONG(ctx, child, OID_AUTO, "data_sg_cnt", CTLFLAG_RW,
  &sc->sysctl_data.data_sg_cnt, "# of sg data block");


 ch_tree = SYSCTL_ADD_NODE(ctx, child, OID_AUTO, "channel",
  CTLFLAG_RD | CTLFLAG_MPSAFE, 0, "");
 if (ch_tree == ((void*)0))
  return;

 for (i = 0; i < sc->hs_nchan; i++) {
  uint32_t ch_id;

  ch_id = vmbus_chan_id(sc->hs_sel_chan[i]);
  snprintf(name, sizeof(name), "%d", ch_id);

  chid_tree = SYSCTL_ADD_NODE(ctx, SYSCTL_CHILDREN(ch_tree),
   OID_AUTO, name, CTLFLAG_RD | CTLFLAG_MPSAFE, 0, "");
  if (chid_tree == ((void*)0))
   return;

  SYSCTL_ADD_ULONG(ctx, SYSCTL_CHILDREN(chid_tree), OID_AUTO,
   "send_req", CTLFLAG_RD, &sc->sysctl_data.chan_send_cnt[i],
   "# of request sending from this channel");
 }
}
