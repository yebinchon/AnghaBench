
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cam_devq {int dummy; } ;
struct ahci_enclosure {int channels; int ichannels; int capsem; int mtx; int * r_memc; int * r_memt; int * r_memr; int * sim; TYPE_1__* leds; int path; int quirks; void* dev; } ;
struct ahci_controller {int channels; int ichannels; int quirks; } ;
typedef void* device_t ;
typedef int buf ;
struct TYPE_2__ {int num; void* led; void* dev; } ;


 int AHCI_EM_ALHD ;
 int AHCI_EM_LED ;
 int AHCI_EM_PM ;
 int AHCI_EM_SAFTE ;
 int AHCI_EM_SES2 ;
 int AHCI_EM_SGPIO ;
 int AHCI_EM_SMB ;
 int AHCI_EM_XMT ;
 int AHCI_NUM_LEDS ;
 int ATA_INL (int *,int ) ;
 int ATA_IRQ_RID ;
 int CAM_LUN_WILDCARD ;
 scalar_t__ CAM_REQ_CMP ;
 scalar_t__ CAM_SUCCESS ;
 int CAM_TARGET_WILDCARD ;
 int ENOMEM ;
 int ENXIO ;
 int MTX_DEF ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int TRUE ;
 int ahci_em_led ;
 scalar_t__ ahci_em_reset (void*) ;
 int ahciemaction ;
 int ahciempoll ;
 scalar_t__ bootverbose ;
 void* bus_alloc_resource_any (void*,int ,int*,int ) ;
 int bus_release_resource (void*,int ,int,int *) ;
 int * cam_sim_alloc (int ,int ,char*,struct ahci_enclosure*,int ,int *,int,int ,struct cam_devq*) ;
 int cam_sim_free (int *,int ) ;
 int cam_sim_path (int *) ;
 struct cam_devq* cam_simq_alloc (int) ;
 int cam_simq_free (struct cam_devq*) ;
 char* device_get_nameunit (void*) ;
 void* device_get_parent (void*) ;
 void* device_get_softc (void*) ;
 int device_get_unit (void*) ;
 int device_printf (void*,char*,...) ;
 void* led_create (int ,TYPE_1__*,char*) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,char*,int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int snprintf (char*,int,char*,char*,int) ;
 int xpt_bus_deregister (int ) ;
 scalar_t__ xpt_bus_register (int *,void*,int ) ;
 scalar_t__ xpt_create_path (int *,int *,int ,int ,int ) ;

__attribute__((used)) static int
ahci_em_attach(device_t dev)
{
 device_t parent = device_get_parent(dev);
 struct ahci_controller *ctlr = device_get_softc(parent);
 struct ahci_enclosure *enc = device_get_softc(dev);
 struct cam_devq *devq;
 int i, c, rid, error;
 char buf[32];

 enc->dev = dev;
 enc->quirks = ctlr->quirks;
 enc->channels = ctlr->channels;
 enc->ichannels = ctlr->ichannels;
 mtx_init(&enc->mtx, "AHCI enclosure lock", ((void*)0), MTX_DEF);
 rid = 0;
 if (!(enc->r_memc = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
     &rid, RF_ACTIVE))) {
  mtx_destroy(&enc->mtx);
  return (ENXIO);
 }
 enc->capsem = ATA_INL(enc->r_memc, 0);
 rid = 1;
 if (!(enc->r_memt = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
     &rid, RF_ACTIVE))) {
  error = ENXIO;
  goto err0;
 }
 if ((enc->capsem & (AHCI_EM_XMT | AHCI_EM_SMB)) == 0) {
  rid = 2;
  if (!(enc->r_memr = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
      &rid, RF_ACTIVE))) {
   error = ENXIO;
   goto err0;
  }
 } else
  enc->r_memr = ((void*)0);
 mtx_lock(&enc->mtx);
 if (ahci_em_reset(dev) != 0) {
     error = ENXIO;
     goto err1;
 }
 rid = ATA_IRQ_RID;

 devq = cam_simq_alloc(1);
 if (devq == ((void*)0)) {
  device_printf(dev, "Unable to allocate SIM queue\n");
  error = ENOMEM;
  goto err1;
 }

 enc->sim = cam_sim_alloc(ahciemaction, ahciempoll, "ahciem", enc,
     device_get_unit(dev), &enc->mtx,
     1, 0, devq);
 if (enc->sim == ((void*)0)) {
  cam_simq_free(devq);
  device_printf(dev, "Unable to allocate SIM\n");
  error = ENOMEM;
  goto err1;
 }
 if (xpt_bus_register(enc->sim, dev, 0) != CAM_SUCCESS) {
  device_printf(dev, "unable to register xpt bus\n");
  error = ENXIO;
  goto err2;
 }
 if (xpt_create_path(&enc->path, ((void*)0), cam_sim_path(enc->sim),
     CAM_TARGET_WILDCARD, CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
  device_printf(dev, "Unable to create path\n");
  error = ENXIO;
  goto err3;
 }
 mtx_unlock(&enc->mtx);
 if (bootverbose) {
  device_printf(dev, "Caps:%s%s%s%s%s%s%s%s\n",
      (enc->capsem & AHCI_EM_PM) ? " PM":"",
      (enc->capsem & AHCI_EM_ALHD) ? " ALHD":"",
      (enc->capsem & AHCI_EM_XMT) ? " XMT":"",
      (enc->capsem & AHCI_EM_SMB) ? " SMB":"",
      (enc->capsem & AHCI_EM_SGPIO) ? " SGPIO":"",
      (enc->capsem & AHCI_EM_SES2) ? " SES-2":"",
      (enc->capsem & AHCI_EM_SAFTE) ? " SAF-TE":"",
      (enc->capsem & AHCI_EM_LED) ? " LED":"");
 }
 if ((enc->capsem & AHCI_EM_LED)) {
  for (c = 0; c < enc->channels; c++) {
   if ((enc->ichannels & (1 << c)) == 0)
    continue;
   for (i = 0; i < AHCI_NUM_LEDS; i++) {
    enc->leds[c * AHCI_NUM_LEDS + i].dev = dev;
    enc->leds[c * AHCI_NUM_LEDS + i].num =
        c * AHCI_NUM_LEDS + i;
   }
   if ((enc->capsem & AHCI_EM_ALHD) == 0) {
    snprintf(buf, sizeof(buf), "%s.%d.act",
        device_get_nameunit(parent), c);
    enc->leds[c * AHCI_NUM_LEDS + 0].led =
        led_create(ahci_em_led,
        &enc->leds[c * AHCI_NUM_LEDS + 0], buf);
   }
   snprintf(buf, sizeof(buf), "%s.%d.locate",
       device_get_nameunit(parent), c);
   enc->leds[c * AHCI_NUM_LEDS + 1].led =
       led_create(ahci_em_led,
       &enc->leds[c * AHCI_NUM_LEDS + 1], buf);
   snprintf(buf, sizeof(buf), "%s.%d.fault",
       device_get_nameunit(parent), c);
   enc->leds[c * AHCI_NUM_LEDS + 2].led =
       led_create(ahci_em_led,
       &enc->leds[c * AHCI_NUM_LEDS + 2], buf);
  }
 }
 return (0);

err3:
 xpt_bus_deregister(cam_sim_path(enc->sim));
err2:
 cam_sim_free(enc->sim, TRUE);
err1:
 mtx_unlock(&enc->mtx);
 if (enc->r_memr)
  bus_release_resource(dev, SYS_RES_MEMORY, 2, enc->r_memr);
err0:
 if (enc->r_memt)
  bus_release_resource(dev, SYS_RES_MEMORY, 1, enc->r_memt);
 bus_release_resource(dev, SYS_RES_MEMORY, 0, enc->r_memc);
 mtx_destroy(&enc->mtx);
 return (error);
}
