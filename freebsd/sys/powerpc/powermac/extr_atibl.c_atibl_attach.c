
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct atibl_softc {int * sc_memr; } ;
typedef int device_t ;


 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 int ENXIO ;
 int OID_AUTO ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,int ,int ,char*,int,struct atibl_softc*,int ,int ,char*,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int SYS_RES_MEMORY ;
 int atibl_sysctl ;
 int * bus_alloc_resource_any (int ,int ,int*,int) ;
 struct atibl_softc* device_get_softc (int ) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
atibl_attach(device_t dev)
{
 struct atibl_softc *sc;
 struct sysctl_ctx_list *ctx;
 struct sysctl_oid *tree;
 int rid;

 sc = device_get_softc(dev);

 rid = 0x18;
 sc->sc_memr = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
   RF_ACTIVE | RF_SHAREABLE);
 if (sc->sc_memr == ((void*)0)) {
  device_printf(dev, "Could not alloc mem resource!\n");
  return (ENXIO);
 }

 ctx = device_get_sysctl_ctx(dev);
 tree = device_get_sysctl_tree(dev);

 SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
     "level", CTLTYPE_INT | CTLFLAG_RW, sc, 0,
     atibl_sysctl, "I", "Backlight level (0-100)");

 return (0);
}
