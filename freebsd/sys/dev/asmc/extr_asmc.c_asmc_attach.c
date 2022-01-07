
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct asmc_softc {int sc_nfan; int * sc_sms_tq; int sc_mtx; int * sc_ioport; scalar_t__ sc_rid_port; int * sc_irq; scalar_t__ sc_rid_irq; int sc_cookie; int sc_sms_task; struct sysctl_oid* sc_sms_tree; struct sysctl_oid* sc_light_tree; struct sysctl_oid* sc_temp_tree; struct sysctl_oid** sc_fan_tree; struct asmc_model* sc_model; } ;
struct asmc_model {char** smc_tempnames; char** smc_tempdescs; int * smc_sms_z; int * smc_sms_y; int * smc_sms_x; int * smc_light_control; int * smc_light_right; int * smc_light_left; scalar_t__* smc_temps; int * smc_fan_targetspeed; int * smc_fan_maxspeed; int * smc_fan_minspeed; int * smc_fan_safespeed; int * smc_fan_speed; int * smc_fan_id; } ;
typedef int device_t ;


 int CTLFLAG_ANYBODY ;
 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 int CTLTYPE_STRING ;
 int ENOMEM ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int MTX_SPIN ;
 int M_WAITOK ;
 int OID_AUTO ;
 int PI_REALTIME ;
 int RF_ACTIVE ;
 void* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,int ,int ,char*,int,int ,char*) ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,int ,int ,char*,int,int ,int,int *,char*,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int TASK_INIT (int *,int ,int ,struct asmc_softc*) ;
 int asmc_init (int ) ;
 struct asmc_model* asmc_match (int ) ;
 int asmc_sms_intrfast ;
 int asmc_sms_task ;
 int * asmc_temp_sysctl ;
 void* bus_alloc_resource_any (int ,int ,scalar_t__*,int ) ;
 int bus_release_resource (int ,int ,scalar_t__,int *) ;
 int bus_setup_intr (int ,int *,int,int ,int *,int ,int *) ;
 int device_get_nameunit (int ) ;
 struct asmc_softc* device_get_softc (int ) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int device_printf (int ,char*) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,char*,int *,int ) ;
 int * taskqueue_create_fast (char*,int ,int ,int **) ;
 int taskqueue_free (int *) ;
 int taskqueue_start_threads (int **,int,int ,char*,int ) ;
 int taskqueue_thread_enqueue ;

__attribute__((used)) static int
asmc_attach(device_t dev)
{
 int i, j;
 int ret;
 char name[2];
 struct asmc_softc *sc = device_get_softc(dev);
 struct sysctl_ctx_list *sysctlctx;
 struct sysctl_oid *sysctlnode;
 struct asmc_model *model;

 sc->sc_ioport = bus_alloc_resource_any(dev, SYS_RES_IOPORT,
     &sc->sc_rid_port, RF_ACTIVE);
 if (sc->sc_ioport == ((void*)0)) {
  device_printf(dev, "unable to allocate IO port\n");
  return (ENOMEM);
 }

 sysctlctx = device_get_sysctl_ctx(dev);
 sysctlnode = device_get_sysctl_tree(dev);

 model = asmc_match(dev);

 mtx_init(&sc->sc_mtx, "asmc", ((void*)0), MTX_SPIN);

 sc->sc_model = model;
 asmc_init(dev);




 sc->sc_fan_tree[0] = SYSCTL_ADD_NODE(sysctlctx,
     SYSCTL_CHILDREN(sysctlnode), OID_AUTO, "fan",
     CTLFLAG_RD, 0, "Fan Root Tree");

 for (i = 1; i <= sc->sc_nfan; i++) {
  j = i - 1;
  name[0] = '0' + j;
  name[1] = 0;
  sc->sc_fan_tree[i] = SYSCTL_ADD_NODE(sysctlctx,
      SYSCTL_CHILDREN(sc->sc_fan_tree[0]),
      OID_AUTO, name, CTLFLAG_RD, 0,
      "Fan Subtree");

  SYSCTL_ADD_PROC(sysctlctx,
      SYSCTL_CHILDREN(sc->sc_fan_tree[i]),
      OID_AUTO, "id", CTLTYPE_STRING | CTLFLAG_RD,
      dev, j, model->smc_fan_id, "I",
      "Fan ID");

  SYSCTL_ADD_PROC(sysctlctx,
      SYSCTL_CHILDREN(sc->sc_fan_tree[i]),
      OID_AUTO, "speed", CTLTYPE_INT | CTLFLAG_RD,
      dev, j, model->smc_fan_speed, "I",
      "Fan speed in RPM");

  SYSCTL_ADD_PROC(sysctlctx,
      SYSCTL_CHILDREN(sc->sc_fan_tree[i]),
      OID_AUTO, "safespeed",
      CTLTYPE_INT | CTLFLAG_RD,
      dev, j, model->smc_fan_safespeed, "I",
      "Fan safe speed in RPM");

  SYSCTL_ADD_PROC(sysctlctx,
      SYSCTL_CHILDREN(sc->sc_fan_tree[i]),
      OID_AUTO, "minspeed",
      CTLTYPE_INT | CTLFLAG_RW,
      dev, j, model->smc_fan_minspeed, "I",
      "Fan minimum speed in RPM");

  SYSCTL_ADD_PROC(sysctlctx,
      SYSCTL_CHILDREN(sc->sc_fan_tree[i]),
      OID_AUTO, "maxspeed",
      CTLTYPE_INT | CTLFLAG_RW,
      dev, j, model->smc_fan_maxspeed, "I",
      "Fan maximum speed in RPM");

  SYSCTL_ADD_PROC(sysctlctx,
      SYSCTL_CHILDREN(sc->sc_fan_tree[i]),
      OID_AUTO, "targetspeed",
      CTLTYPE_INT | CTLFLAG_RW,
      dev, j, model->smc_fan_targetspeed, "I",
      "Fan target speed in RPM");
 }




 sc->sc_temp_tree = SYSCTL_ADD_NODE(sysctlctx,
     SYSCTL_CHILDREN(sysctlnode), OID_AUTO, "temp",
     CTLFLAG_RD, 0, "Temperature sensors");

 for (i = 0; model->smc_temps[i]; i++) {
  SYSCTL_ADD_PROC(sysctlctx,
      SYSCTL_CHILDREN(sc->sc_temp_tree),
      OID_AUTO, model->smc_tempnames[i],
      CTLTYPE_INT | CTLFLAG_RD,
      dev, i, asmc_temp_sysctl, "I",
      model->smc_tempdescs[i]);
 }




 if (model->smc_light_left) {
  sc->sc_light_tree = SYSCTL_ADD_NODE(sysctlctx,
      SYSCTL_CHILDREN(sysctlnode), OID_AUTO, "light",
      CTLFLAG_RD, 0, "Keyboard backlight sensors");

  SYSCTL_ADD_PROC(sysctlctx,
      SYSCTL_CHILDREN(sc->sc_light_tree),
      OID_AUTO, "left", CTLTYPE_INT | CTLFLAG_RD,
      dev, 0, model->smc_light_left, "I",
      "Keyboard backlight left sensor");

  SYSCTL_ADD_PROC(sysctlctx,
      SYSCTL_CHILDREN(sc->sc_light_tree),
      OID_AUTO, "right", CTLTYPE_INT | CTLFLAG_RD,
      dev, 0, model->smc_light_right, "I",
      "Keyboard backlight right sensor");

  SYSCTL_ADD_PROC(sysctlctx,
      SYSCTL_CHILDREN(sc->sc_light_tree),
      OID_AUTO, "control",
      CTLTYPE_INT | CTLFLAG_RW | CTLFLAG_ANYBODY,
      dev, 0, model->smc_light_control, "I",
      "Keyboard backlight brightness control");
 }

 if (model->smc_sms_x == ((void*)0))
  goto nosms;




 sc->sc_sms_tree = SYSCTL_ADD_NODE(sysctlctx,
     SYSCTL_CHILDREN(sysctlnode), OID_AUTO, "sms",
     CTLFLAG_RD, 0, "Sudden Motion Sensor");

 SYSCTL_ADD_PROC(sysctlctx,
     SYSCTL_CHILDREN(sc->sc_sms_tree),
     OID_AUTO, "x", CTLTYPE_INT | CTLFLAG_RD,
     dev, 0, model->smc_sms_x, "I",
     "Sudden Motion Sensor X value");

 SYSCTL_ADD_PROC(sysctlctx,
     SYSCTL_CHILDREN(sc->sc_sms_tree),
     OID_AUTO, "y", CTLTYPE_INT | CTLFLAG_RD,
     dev, 0, model->smc_sms_y, "I",
     "Sudden Motion Sensor Y value");

 SYSCTL_ADD_PROC(sysctlctx,
     SYSCTL_CHILDREN(sc->sc_sms_tree),
     OID_AUTO, "z", CTLTYPE_INT | CTLFLAG_RD,
     dev, 0, model->smc_sms_z, "I",
     "Sudden Motion Sensor Z value");
 sc->sc_sms_tq = ((void*)0);
 TASK_INIT(&sc->sc_sms_task, 0, asmc_sms_task, sc);
 sc->sc_sms_tq = taskqueue_create_fast("asmc_taskq", M_WAITOK,
     taskqueue_thread_enqueue, &sc->sc_sms_tq);
 taskqueue_start_threads(&sc->sc_sms_tq, 1, PI_REALTIME, "%s sms taskq",
     device_get_nameunit(dev));



 sc->sc_rid_irq = 0;
 sc->sc_irq = bus_alloc_resource_any(dev, SYS_RES_IRQ,
     &sc->sc_rid_irq, RF_ACTIVE);
 if (sc->sc_irq == ((void*)0)) {
  device_printf(dev, "unable to allocate IRQ resource\n");
  ret = ENXIO;
  goto err2;
 }

 ret = bus_setup_intr(dev, sc->sc_irq,
           INTR_TYPE_MISC | INTR_MPSAFE,
     asmc_sms_intrfast, ((void*)0),
     dev, &sc->sc_cookie);

 if (ret) {
  device_printf(dev, "unable to setup SMS IRQ\n");
  goto err1;
 }
nosms:
 return (0);
err1:
 bus_release_resource(dev, SYS_RES_IRQ, sc->sc_rid_irq, sc->sc_irq);
err2:
 bus_release_resource(dev, SYS_RES_IOPORT, sc->sc_rid_port,
     sc->sc_ioport);
 mtx_destroy(&sc->sc_mtx);
 if (sc->sc_sms_tq)
  taskqueue_free(sc->sc_sms_tq);

 return (ret);
}
