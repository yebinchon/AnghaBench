
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct vi_info {int ctx; TYPE_4__* ifp; TYPE_2__* pi; } ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct TYPE_9__ {int lro_flushed; int lro_queued; TYPE_4__* ifp; } ;
struct TYPE_11__ {scalar_t__ abs_id; scalar_t__ cntxt_id; int flags; } ;
struct sge_rxq {int fl; int vlan_extraction; int rxcsum; TYPE_3__ lro; TYPE_5__ iq; TYPE_4__* ifp; } ;
struct TYPE_7__ {scalar_t__ iq_base; } ;
struct adapter {int flags; TYPE_1__ sge; } ;
typedef int name ;
struct TYPE_10__ {int if_capenable; } ;
struct TYPE_8__ {struct adapter* adapter; } ;


 int CTLFLAG_RD ;
 int FL_LOCK (int *) ;
 int FL_UNLOCK (int *) ;
 int IFCAP_HWRXTSTMP ;
 int IFCAP_LRO ;
 int IQ_LRO_ENABLED ;
 int IQ_RX_TIMESTAMP ;
 int IS_VF ;
 int KASSERT (int,char*) ;
 int MPASS (int) ;
 int OID_AUTO ;
 struct sysctl_oid* SYSCTL_ADD_NODE (int *,struct sysctl_oid_list*,int ,char*,int ,int *,char*) ;
 int SYSCTL_ADD_U64 (int *,struct sysctl_oid_list*,int ,char*,int ,int *,int ,int *) ;
 int SYSCTL_ADD_UQUAD (int *,struct sysctl_oid_list*,int ,char*,int ,int *,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int add_fl_sysctls (struct adapter*,int *,struct sysctl_oid*,int *) ;
 int add_iq_sysctls (int *,struct sysctl_oid*,TYPE_5__*) ;
 int alloc_iq_fl (struct vi_info*,TYPE_5__*,int *,int,int ) ;
 int cong_drop ;
 int lro_entries ;
 int lro_mbufs ;
 int refill_fl (struct adapter*,int *,int) ;
 int snprintf (char*,int,char*,int) ;
 int tcp_lro_init_args (TYPE_3__*,TYPE_4__*,int ,int ) ;
 int tnl_cong (TYPE_2__*,int ) ;

__attribute__((used)) static int
alloc_rxq(struct vi_info *vi, struct sge_rxq *rxq, int intr_idx, int idx,
    struct sysctl_oid *oid)
{
 int rc;
 struct adapter *sc = vi->pi->adapter;
 struct sysctl_oid_list *children;
 char name[16];

 rc = alloc_iq_fl(vi, &rxq->iq, &rxq->fl, intr_idx,
     tnl_cong(vi->pi, cong_drop));
 if (rc != 0)
  return (rc);

 if (idx == 0)
  sc->sge.iq_base = rxq->iq.abs_id - rxq->iq.cntxt_id;
 else
  KASSERT(rxq->iq.cntxt_id + sc->sge.iq_base == rxq->iq.abs_id,
      ("iq_base mismatch"));
 KASSERT(sc->sge.iq_base == 0 || sc->flags & IS_VF,
     ("PF with non-zero iq_base"));





 FL_LOCK(&rxq->fl);
 refill_fl(sc, &rxq->fl, 128);
 FL_UNLOCK(&rxq->fl);
 if (vi->ifp->if_capenable & IFCAP_HWRXTSTMP)
  rxq->iq.flags |= IQ_RX_TIMESTAMP;
 rxq->ifp = vi->ifp;

 children = SYSCTL_CHILDREN(oid);

 snprintf(name, sizeof(name), "%d", idx);
 oid = SYSCTL_ADD_NODE(&vi->ctx, children, OID_AUTO, name, CTLFLAG_RD,
     ((void*)0), "rx queue");
 children = SYSCTL_CHILDREN(oid);

 add_iq_sysctls(&vi->ctx, oid, &rxq->iq);






 SYSCTL_ADD_UQUAD(&vi->ctx, children, OID_AUTO, "rxcsum", CTLFLAG_RD,
     &rxq->rxcsum, "# of times hardware assisted with checksum");
 SYSCTL_ADD_UQUAD(&vi->ctx, children, OID_AUTO, "vlan_extraction",
     CTLFLAG_RD, &rxq->vlan_extraction,
     "# of times hardware extracted 802.1Q tag");

 add_fl_sysctls(sc, &vi->ctx, oid, &rxq->fl);

 return (rc);
}
