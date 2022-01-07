
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct TYPE_4__ {int arge_tx_cnt; int arge_tx_cons; int arge_tx_prod; } ;
struct TYPE_3__ {int intr_ok; int intr_stray2; int intr_stray; int tx_pkts_nosegs; int tx_pkts_unaligned_len; int tx_pkts_unaligned_start; int tx_pkts_unaligned; int tx_pkts_aligned; } ;
struct arge_softc {TYPE_2__ arge_cdata; TYPE_1__ stats; int arge_debug; } ;
typedef int device_t ;


 int CTLFLAG_RW ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (struct sysctl_ctx_list*,int ,int ,char*,int ,int *,int ,char*) ;
 int SYSCTL_ADD_UINT (struct sysctl_ctx_list*,int ,int ,char*,int ,int *,int ,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int arge_attach_intr_sysctl (int ,int ) ;
 struct arge_softc* device_get_softc (int ) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;

__attribute__((used)) static void
arge_attach_sysctl(device_t dev)
{
 struct arge_softc *sc = device_get_softc(dev);
 struct sysctl_ctx_list *ctx = device_get_sysctl_ctx(dev);
 struct sysctl_oid *tree = device_get_sysctl_tree(dev);
 SYSCTL_ADD_UINT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
  "tx_pkts_aligned", CTLFLAG_RW, &sc->stats.tx_pkts_aligned, 0,
  "number of TX aligned packets");

 SYSCTL_ADD_UINT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
  "tx_pkts_unaligned", CTLFLAG_RW, &sc->stats.tx_pkts_unaligned,
  0, "number of TX unaligned packets");

 SYSCTL_ADD_UINT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
  "tx_pkts_unaligned_start", CTLFLAG_RW, &sc->stats.tx_pkts_unaligned_start,
  0, "number of TX unaligned packets (start)");

 SYSCTL_ADD_UINT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
  "tx_pkts_unaligned_len", CTLFLAG_RW, &sc->stats.tx_pkts_unaligned_len,
  0, "number of TX unaligned packets (len)");

 SYSCTL_ADD_UINT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
  "tx_pkts_nosegs", CTLFLAG_RW, &sc->stats.tx_pkts_nosegs,
  0, "number of TX packets fail with no ring slots avail");

 SYSCTL_ADD_UINT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
  "intr_stray_filter", CTLFLAG_RW, &sc->stats.intr_stray,
  0, "number of stray interrupts (filter)");

 SYSCTL_ADD_UINT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
  "intr_stray_intr", CTLFLAG_RW, &sc->stats.intr_stray2,
  0, "number of stray interrupts (intr)");

 SYSCTL_ADD_UINT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
  "intr_ok", CTLFLAG_RW, &sc->stats.intr_ok,
  0, "number of OK interrupts");
}
