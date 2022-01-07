
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct ad7418_softc {int sc_lock; scalar_t__ sc_lastupdate; int sc_dev; } ;
typedef int device_t ;


 int AD7418_CONF ;
 int AD7418_CONF_SHUTDOWN ;
 int CTLFLAG_RD ;
 int CTLTYPE_INT ;
 int OID_AUTO ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,int ,int ,char*,int,struct ad7418_softc*,int ,int ,char*,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int ad7418_read_1 (int ,int ) ;
 int ad7418_sysctl_temp ;
 int ad7418_sysctl_voltage ;
 int ad7418_write_1 (int ,int ,int) ;
 struct ad7418_softc* device_get_softc (int ) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 scalar_t__ hz ;
 int sx_init (int *,char*) ;
 scalar_t__ ticks ;

__attribute__((used)) static int
ad7418_attach(device_t dev)
{
 struct ad7418_softc *sc = device_get_softc(dev);
 struct sysctl_ctx_list *ctx = device_get_sysctl_ctx(dev);
 struct sysctl_oid *tree = device_get_sysctl_tree(dev);
 int conf;

 sc->sc_dev = dev;
 sc->sc_lastupdate = ticks - hz;

 sx_init(&sc->sc_lock, "ad7418");

 SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
  "temp", CTLTYPE_INT | CTLFLAG_RD, sc, 0,
  ad7418_sysctl_temp, "I", "operating temperature");
 SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
  "volt", CTLTYPE_INT | CTLFLAG_RD, sc, 0,
  ad7418_sysctl_voltage, "I", "input voltage");


 conf = ad7418_read_1(dev, AD7418_CONF);
 if (conf >= 0 && (conf & AD7418_CONF_SHUTDOWN))
  ad7418_write_1(dev, AD7418_CONF, conf &~ AD7418_CONF_SHUTDOWN);

 return (0);
}
