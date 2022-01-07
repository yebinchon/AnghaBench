
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct octeon_wdog_softc {int sc_armed; int sc_debug; int sc_dev; } ;
typedef int device_t ;


 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (struct sysctl_ctx_list*,int ,int ,char*,int ,int *,int ,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 struct octeon_wdog_softc* device_get_softc (int ) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;

__attribute__((used)) static void
octeon_wdog_sysctl(device_t dev)
{
 struct octeon_wdog_softc *sc = device_get_softc(dev);

        struct sysctl_ctx_list *ctx = device_get_sysctl_ctx(sc->sc_dev);
        struct sysctl_oid *tree = device_get_sysctl_tree(sc->sc_dev);

        SYSCTL_ADD_INT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
                "debug", CTLFLAG_RW, &sc->sc_debug, 0,
                "enable watchdog debugging");
        SYSCTL_ADD_INT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
                "armed", CTLFLAG_RD, &sc->sc_armed, 0,
                "whether the watchdog is armed");
}
