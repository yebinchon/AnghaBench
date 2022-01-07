
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct isl_softc {int isl_sx; int dev; } ;
typedef int device_t ;


 int CMD1_MASK_ALS_ONCE ;
 int CMD1_MASK_IR_ONCE ;
 int CMD1_MASK_PROX_ONCE ;
 int CTLFLAG_RD ;
 int CTLTYPE_INT ;
 int ENXIO ;
 int ISL_METHOD_ALS ;
 int ISL_METHOD_IR ;
 int ISL_METHOD_PROX ;
 int ISL_METHOD_RANGE ;
 int ISL_METHOD_RESOLUTION ;
 int OID_AUTO ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,int ,int ,char*,int,struct isl_softc*,int ,int ,char*,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 struct isl_softc* device_get_softc (int ) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 scalar_t__ init_device (int ,int ) ;
 scalar_t__ isl_read_sensor (int ,int ) ;
 int isl_sysctl ;
 int sx_init (int *,char*) ;

__attribute__((used)) static int
isl_attach(device_t dev)
{
 struct isl_softc *sc;
 struct sysctl_ctx_list *sysctl_ctx;
 struct sysctl_oid *sysctl_tree;
 int use_als;
 int use_ir;
 int use_prox;

 sc = device_get_softc(dev);
 sc->dev = dev;

 if (init_device(dev, 0) != 0)
  return (ENXIO);

 sx_init(&sc->isl_sx, "ISL read lock");

 sysctl_ctx = device_get_sysctl_ctx(dev);
 sysctl_tree = device_get_sysctl_tree(dev);

 use_als = isl_read_sensor(dev, CMD1_MASK_ALS_ONCE) >= 0;
 use_ir = isl_read_sensor(dev, CMD1_MASK_IR_ONCE) >= 0;
 use_prox = isl_read_sensor(dev, CMD1_MASK_PROX_ONCE) >= 0;

 if (use_als) {
  SYSCTL_ADD_PROC(sysctl_ctx,
   SYSCTL_CHILDREN(sysctl_tree), OID_AUTO,
       "als", CTLTYPE_INT | CTLFLAG_RD,
       sc, ISL_METHOD_ALS, isl_sysctl, "I",
       "Current ALS sensor read-out");
 }

 if (use_ir) {
  SYSCTL_ADD_PROC(sysctl_ctx,
   SYSCTL_CHILDREN(sysctl_tree), OID_AUTO,
       "ir", CTLTYPE_INT | CTLFLAG_RD,
       sc, ISL_METHOD_IR, isl_sysctl, "I",
       "Current IR sensor read-out");
 }

 if (use_prox) {
  SYSCTL_ADD_PROC(sysctl_ctx,
   SYSCTL_CHILDREN(sysctl_tree), OID_AUTO,
       "prox", CTLTYPE_INT | CTLFLAG_RD,
       sc, ISL_METHOD_PROX, isl_sysctl, "I",
       "Current proximity sensor read-out");
 }

 SYSCTL_ADD_PROC(sysctl_ctx,
  SYSCTL_CHILDREN(sysctl_tree), OID_AUTO,
      "resolution", CTLTYPE_INT | CTLFLAG_RD,
      sc, ISL_METHOD_RESOLUTION, isl_sysctl, "I",
      "Current proximity sensor resolution");

 SYSCTL_ADD_PROC(sysctl_ctx,
 SYSCTL_CHILDREN(sysctl_tree), OID_AUTO,
     "range", CTLTYPE_INT | CTLFLAG_RD,
     sc, ISL_METHOD_RANGE, isl_sysctl, "I",
     "Current proximity sensor range");

 return (0);
}
