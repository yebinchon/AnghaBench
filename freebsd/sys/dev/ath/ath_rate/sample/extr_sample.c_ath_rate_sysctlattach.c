
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct sample_softc {int sc_dev; } ;
struct ath_softc {int sc_dev; } ;


 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 int OID_AUTO ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,int ,int ,char*,int,struct sample_softc*,int ,int ,char*,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int ath_rate_sysctl_sample_rate ;
 int ath_rate_sysctl_smoothing_rate ;
 int ath_rate_sysctl_stats ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;

__attribute__((used)) static void
ath_rate_sysctlattach(struct ath_softc *sc, struct sample_softc *ssc)
{
 struct sysctl_ctx_list *ctx = device_get_sysctl_ctx(sc->sc_dev);
 struct sysctl_oid *tree = device_get_sysctl_tree(sc->sc_dev);

 SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
     "smoothing_rate", CTLTYPE_INT | CTLFLAG_RW, ssc, 0,
     ath_rate_sysctl_smoothing_rate, "I",
     "sample: smoothing rate for avg tx time (%%)");
 SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
     "sample_rate", CTLTYPE_INT | CTLFLAG_RW, ssc, 0,
     ath_rate_sysctl_sample_rate, "I",
     "sample: percent air time devoted to sampling new rates (%%)");

 SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
     "sample_stats", CTLTYPE_INT | CTLFLAG_RW, sc, 0,
     ath_rate_sysctl_stats, "I", "sample: print statistics");
}
