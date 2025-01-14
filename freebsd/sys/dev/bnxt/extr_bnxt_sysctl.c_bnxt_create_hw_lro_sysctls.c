
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid {int dummy; } ;
struct bnxt_softc {int hw_lro_ctx; struct sysctl_oid* hw_lro_oid; } ;


 int CTLFLAG_RWTUN ;
 int CTLTYPE_INT ;
 int ENOMEM ;
 int OID_AUTO ;
 int SYSCTL_ADD_PROC (int *,int ,int ,char*,int,struct bnxt_softc*,int ,int ,char*,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int bnxt_hw_lro_enable_disable ;
 int bnxt_hw_lro_set_max_agg_segs ;
 int bnxt_hw_lro_set_max_aggs ;
 int bnxt_hw_lro_set_min_agg_len ;
 int bnxt_hw_lro_set_mode ;

int
bnxt_create_hw_lro_sysctls(struct bnxt_softc *softc)
{
 struct sysctl_oid *oid = softc->hw_lro_oid;

 if (!oid)
  return ENOMEM;

 SYSCTL_ADD_PROC(&softc->hw_lro_ctx, SYSCTL_CHILDREN(oid), OID_AUTO,
   "enable", CTLTYPE_INT|CTLFLAG_RWTUN, softc, 0,
   bnxt_hw_lro_enable_disable, "A",
   "Enable or Disable HW LRO: 0 / 1");

 SYSCTL_ADD_PROC(&softc->hw_lro_ctx, SYSCTL_CHILDREN(oid), OID_AUTO,
   "gro_mode", CTLTYPE_INT|CTLFLAG_RWTUN, softc, 0,
   bnxt_hw_lro_set_mode, "A",
   "Set mode: 1 = GRO mode, 0 = RSC mode");

 SYSCTL_ADD_PROC(&softc->hw_lro_ctx, SYSCTL_CHILDREN(oid), OID_AUTO,
   "max_agg_segs", CTLTYPE_INT|CTLFLAG_RWTUN, softc, 0,
   bnxt_hw_lro_set_max_agg_segs, "A",
   "Set Max Agg Seg Value (unit is Log2): "
   "0 (= 1 seg) / 1 (= 2 segs) /  ... / 31 (= 2^31 segs)");

        SYSCTL_ADD_PROC(&softc->hw_lro_ctx, SYSCTL_CHILDREN(oid), OID_AUTO,
   "max_aggs", CTLTYPE_INT|CTLFLAG_RWTUN, softc, 0,
   bnxt_hw_lro_set_max_aggs, "A",
   "Set Max Aggs Value (unit is Log2): "
   "0 (= 1 agg) / 1 (= 2 aggs) /  ... / 7 (= 2^7 segs)");

 SYSCTL_ADD_PROC(&softc->hw_lro_ctx, SYSCTL_CHILDREN(oid), OID_AUTO,
   "min_agg_len", CTLTYPE_INT|CTLFLAG_RWTUN, softc, 0,
   bnxt_hw_lro_set_min_agg_len, "A",
   "Min Agg Len: 1 to 9000");

 return 0;
}
