
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct ath_softc {int sc_dev; } ;


 int CTLFLAG_RW ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (struct sysctl_ctx_list*,int ,int ,char*,int ,int *,int ,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int ath_rate_raise ;
 int ath_rate_raise_threshold ;
 int ath_rateinterval ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;

__attribute__((used)) static void
ath_rate_sysctlattach(struct ath_softc *sc)
{
 struct sysctl_ctx_list *ctx = device_get_sysctl_ctx(sc->sc_dev);
 struct sysctl_oid *tree = device_get_sysctl_tree(sc->sc_dev);

 SYSCTL_ADD_INT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
  "rate_interval", CTLFLAG_RW, &ath_rateinterval, 0,
  "rate control: operation interval (ms)");

 SYSCTL_ADD_INT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
  "rate_raise", CTLFLAG_RW, &ath_rate_raise, 0,
  "rate control: retry threshold to credit rate raise (%%)");
 SYSCTL_ADD_INT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
  "rate_raise_threshold", CTLFLAG_RW, &ath_rate_raise_threshold,0,
  "rate control: # good periods before raising rate");
}
