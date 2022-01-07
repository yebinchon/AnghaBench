
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct rtwn_softc {scalar_t__ sc_ht40; scalar_t__ sc_hwcrypto; scalar_t__ sc_ratectl_sysctl; scalar_t__ sc_ratectl; int sc_debug; int sc_dev; } ;


 int CTLFLAG_RD ;
 int CTLFLAG_RDTUN ;
 int CTLFLAG_RWTUN ;
 int OID_AUTO ;
 scalar_t__ RTWN_CRYPTO_FULL ;
 scalar_t__ RTWN_CRYPTO_MAX ;
 scalar_t__ RTWN_CRYPTO_PAIR ;
 scalar_t__ RTWN_RATECTL_FW ;
 scalar_t__ RTWN_RATECTL_MAX ;
 scalar_t__ RTWN_RATECTL_NET80211 ;
 int SYSCTL_ADD_INT (struct sysctl_ctx_list*,int ,int ,char*,int ,scalar_t__*,scalar_t__,char*) ;
 int SYSCTL_ADD_U32 (struct sysctl_ctx_list*,int ,int ,char*,int ,int *,int ,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;

void
rtwn_sysctlattach(struct rtwn_softc *sc)
{
 struct sysctl_ctx_list *ctx = device_get_sysctl_ctx(sc->sc_dev);
 struct sysctl_oid *tree = device_get_sysctl_tree(sc->sc_dev);


 sc->sc_ht40 = 0;
 SYSCTL_ADD_INT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
     "ht40", CTLFLAG_RDTUN, &sc->sc_ht40,
     sc->sc_ht40, "Enable 40 MHz mode support");
 sc->sc_hwcrypto = RTWN_CRYPTO_PAIR;
 SYSCTL_ADD_INT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
     "hwcrypto", CTLFLAG_RDTUN, &sc->sc_hwcrypto,
     sc->sc_hwcrypto, "Enable h/w crypto: "
     "0 - disable, 1 - pairwise keys, 2 - all keys");
 if (sc->sc_hwcrypto >= RTWN_CRYPTO_MAX)
  sc->sc_hwcrypto = RTWN_CRYPTO_FULL;

 sc->sc_ratectl_sysctl = RTWN_RATECTL_NET80211;
 SYSCTL_ADD_INT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
     "ratectl", CTLFLAG_RDTUN, &sc->sc_ratectl_sysctl,
     sc->sc_ratectl_sysctl, "Select rate control mechanism: "
     "0 - disabled, 1 - via net80211, 2 - via firmware");
 if (sc->sc_ratectl_sysctl >= RTWN_RATECTL_MAX)
  sc->sc_ratectl_sysctl = RTWN_RATECTL_FW;

 sc->sc_ratectl = sc->sc_ratectl_sysctl;
 SYSCTL_ADD_INT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
     "ratectl_selected", CTLFLAG_RD, &sc->sc_ratectl,
     sc->sc_ratectl,
     "Currently selected rate control mechanism (by the driver)");
}
