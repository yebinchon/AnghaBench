
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct ads111x_softc {int lock; int cfgword; int * chipinfo; int dev; int addr; } ;
typedef int device_t ;


 int ADS111x_CONF ;
 int ADS111x_CONF_DEFAULT ;
 int CTLFLAG_RWTUN ;
 int CTLTYPE_INT ;
 int ENXIO ;
 int OID_AUTO ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,int ,int ,char*,int,struct ads111x_softc*,int ,int ,char*,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int ads111x_add_channels (struct ads111x_softc*) ;
 int * ads111x_find_chipinfo (int ) ;
 int ads111x_sysctl_config ;
 int ads111x_sysctl_hithresh ;
 int ads111x_sysctl_lothresh ;
 int ads111x_write_2 (struct ads111x_softc*,int ,int ) ;
 struct ads111x_softc* device_get_softc (int ) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int device_printf (int ,char*) ;
 int iicbus_get_addr (int ) ;
 int sx_init (int *,char*) ;

__attribute__((used)) static int
ads111x_attach(device_t dev)
{
 struct ads111x_softc *sc;
 struct sysctl_ctx_list *ctx;
 struct sysctl_oid *tree;
 int err;

 sc = device_get_softc(dev);
 sc->dev = dev;
 sc->addr = iicbus_get_addr(dev);
 sc->cfgword = ADS111x_CONF_DEFAULT;

 sc->chipinfo = ads111x_find_chipinfo(sc->dev);
 if (sc->chipinfo == ((void*)0)) {
  device_printf(dev,
      "cannot get chipinfo (but it worked during probe)");
  return (ENXIO);
 }


 if ((err = ads111x_write_2(sc, ADS111x_CONF, sc->cfgword)) != 0) {
  device_printf(dev, "cannot write chip config register\n");
  return (err);
 }


 ctx = device_get_sysctl_ctx(dev);
 tree = device_get_sysctl_tree(dev);
 SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
     "config", CTLTYPE_INT | CTLFLAG_RWTUN, sc, 0,
     ads111x_sysctl_config, "I", "configuration register word");
 SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
     "lo_thresh", CTLTYPE_INT | CTLFLAG_RWTUN, sc, 0,
     ads111x_sysctl_lothresh, "I", "comparator low threshold");
 SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
     "hi_thresh", CTLTYPE_INT | CTLFLAG_RWTUN, sc, 0,
     ads111x_sysctl_hithresh, "I", "comparator high threshold");


 ads111x_add_channels(sc);

 sx_init(&sc->lock, "ads111x");

 return (0);
}
