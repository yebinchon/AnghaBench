
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct ar5315_spi_softc {int sc_debug; } ;
typedef int device_t ;


 int CTLFLAG_RW ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (struct sysctl_ctx_list*,int ,int ,char*,int ,int *,int ,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 struct ar5315_spi_softc* device_get_softc (int ) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;

__attribute__((used)) static void
ar5315_spi_attach_sysctl(device_t dev)
{
 struct ar5315_spi_softc *sc;
 struct sysctl_ctx_list *ctx;
 struct sysctl_oid *tree;

 sc = device_get_softc(dev);
 ctx = device_get_sysctl_ctx(dev);
 tree = device_get_sysctl_tree(dev);

 SYSCTL_ADD_INT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
  "debug", CTLFLAG_RW, &sc->sc_debug, 0,
  "ar5315_spi debugging flags");
}
