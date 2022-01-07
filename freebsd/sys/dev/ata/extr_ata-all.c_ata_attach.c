
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mtx {int dummy; } ;
struct cam_devq {int dummy; } ;
struct TYPE_4__ {int (* alloc ) (int ) ;} ;
struct ata_channel {int flags; int pm_level; int poll_callout; int state_mtx; scalar_t__ r_irq; int * sim; int path; int ih; TYPE_2__ dma; TYPE_1__* user; TYPE_1__* curr; int conntask; int state; int dev; } ;
typedef int device_t ;
typedef int buf ;
struct TYPE_3__ {int revision; int mode; int bytecount; int caps; } ;


 int ATA_IDLE ;
 int ATA_INTR_FLAGS ;
 int ATA_IRQ_RID ;
 int ATA_NO_48BIT_DMA ;
 int ATA_PERIODIC_POLL ;
 int ATA_SATA ;
 int CAM_LUN_WILDCARD ;
 scalar_t__ CAM_REQ_CMP ;
 scalar_t__ CAM_SUCCESS ;
 int CAM_TARGET_WILDCARD ;
 int CTS_ATA_CAPS_H_DMA48 ;
 int CTS_SATA_CAPS_D_PMREQ ;
 int CTS_SATA_CAPS_H_PMREQ ;
 int EEXIST ;
 int ENOMEM ;
 int ENXIO ;
 int MAXPHYS ;
 int MTX_DEF ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int TASK_INIT (int *,int ,int ,int ) ;
 int TRUE ;
 int ata_conn_event ;
 int ata_interrupt ;
 int ata_periodic_poll ;
 int ata_str2mode (char const*) ;
 int ataaction ;
 int atapoll ;
 scalar_t__ bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_release_resource (int ,int ,int,scalar_t__) ;
 int bus_setup_intr (int ,scalar_t__,int ,int *,int ,struct ata_channel*,int *) ;
 int bzero (int *,int) ;
 int callout_drain (int *) ;
 int callout_init (int *,int) ;
 int callout_reset (int *,int ,int ,struct ata_channel*) ;
 int * cam_sim_alloc (int ,int ,char*,struct ata_channel*,int ,int *,int,int ,struct cam_devq*) ;
 int cam_sim_free (int *,int ) ;
 int cam_sim_path (int *) ;
 struct cam_devq* cam_simq_alloc (int) ;
 int cam_simq_free (struct cam_devq*) ;
 int device_get_name (int ) ;
 struct ata_channel* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int hz ;
 int mtx_init (int *,char*,int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ resource_int_value (int ,int ,char*,int*) ;
 scalar_t__ resource_string_value (int ,int ,char*,char const**) ;
 int snprintf (char*,int,char*,int) ;
 int stub1 (int ) ;
 int xpt_bus_deregister (int ) ;
 scalar_t__ xpt_bus_register (int *,int ,int ) ;
 scalar_t__ xpt_create_path (int *,int *,int ,int ,int ) ;

int
ata_attach(device_t dev)
{
    struct ata_channel *ch = device_get_softc(dev);
    int error, rid;
    struct cam_devq *devq;
    const char *res;
    char buf[64];
    int i, mode;


    if (ch->r_irq)
 return EEXIST;


    ch->dev = dev;
    ch->state = ATA_IDLE;
    bzero(&ch->state_mtx, sizeof(struct mtx));
    mtx_init(&ch->state_mtx, "ATA state lock", ((void*)0), MTX_DEF);
    TASK_INIT(&ch->conntask, 0, ata_conn_event, dev);
 for (i = 0; i < 16; i++) {
  ch->user[i].revision = 0;
  snprintf(buf, sizeof(buf), "dev%d.sata_rev", i);
  if (resource_int_value(device_get_name(dev),
      device_get_unit(dev), buf, &mode) != 0 &&
      resource_int_value(device_get_name(dev),
      device_get_unit(dev), "sata_rev", &mode) != 0)
   mode = -1;
  if (mode >= 0)
   ch->user[i].revision = mode;
  ch->user[i].mode = 0;
  snprintf(buf, sizeof(buf), "dev%d.mode", i);
  if (resource_string_value(device_get_name(dev),
      device_get_unit(dev), buf, &res) == 0)
   mode = ata_str2mode(res);
  else if (resource_string_value(device_get_name(dev),
      device_get_unit(dev), "mode", &res) == 0)
   mode = ata_str2mode(res);
  else
   mode = -1;
  if (mode >= 0)
   ch->user[i].mode = mode;
  if (ch->flags & ATA_SATA)
   ch->user[i].bytecount = 8192;
  else
   ch->user[i].bytecount = MAXPHYS;
  ch->user[i].caps = 0;
  ch->curr[i] = ch->user[i];
  if (ch->flags & ATA_SATA) {
   if (ch->pm_level > 0)
    ch->user[i].caps |= CTS_SATA_CAPS_H_PMREQ;
   if (ch->pm_level > 1)
    ch->user[i].caps |= CTS_SATA_CAPS_D_PMREQ;
  } else {
   if (!(ch->flags & ATA_NO_48BIT_DMA))
    ch->user[i].caps |= CTS_ATA_CAPS_H_DMA48;
  }
 }
 callout_init(&ch->poll_callout, 1);


    if (ch->dma.alloc)
 ch->dma.alloc(dev);


    rid = ATA_IRQ_RID;
    ch->r_irq = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
           RF_SHAREABLE | RF_ACTIVE);
    if (!ch->r_irq) {
 device_printf(dev, "unable to allocate interrupt\n");
 return ENXIO;
    }
    if ((error = bus_setup_intr(dev, ch->r_irq, ATA_INTR_FLAGS, ((void*)0),
    ata_interrupt, ch, &ch->ih))) {
 bus_release_resource(dev, SYS_RES_IRQ, rid, ch->r_irq);
 device_printf(dev, "unable to setup interrupt\n");
 return error;
    }

 if (ch->flags & ATA_PERIODIC_POLL)
  callout_reset(&ch->poll_callout, hz, ata_periodic_poll, ch);
 mtx_lock(&ch->state_mtx);

 devq = cam_simq_alloc(1);
 if (devq == ((void*)0)) {
  device_printf(dev, "Unable to allocate simq\n");
  error = ENOMEM;
  goto err1;
 }

 ch->sim = cam_sim_alloc(ataaction, atapoll, "ata", ch,
     device_get_unit(dev), &ch->state_mtx, 1, 0, devq);
 if (ch->sim == ((void*)0)) {
  device_printf(dev, "unable to allocate sim\n");
  cam_simq_free(devq);
  error = ENOMEM;
  goto err1;
 }
 if (xpt_bus_register(ch->sim, dev, 0) != CAM_SUCCESS) {
  device_printf(dev, "unable to register xpt bus\n");
  error = ENXIO;
  goto err2;
 }
 if (xpt_create_path(&ch->path, ((void*)0), cam_sim_path(ch->sim),
     CAM_TARGET_WILDCARD, CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
  device_printf(dev, "unable to create path\n");
  error = ENXIO;
  goto err3;
 }
 mtx_unlock(&ch->state_mtx);
 return (0);

err3:
 xpt_bus_deregister(cam_sim_path(ch->sim));
err2:
 cam_sim_free(ch->sim, TRUE);
 ch->sim = ((void*)0);
err1:
 bus_release_resource(dev, SYS_RES_IRQ, rid, ch->r_irq);
 mtx_unlock(&ch->state_mtx);
 if (ch->flags & ATA_PERIODIC_POLL)
  callout_drain(&ch->poll_callout);
 return (error);
}
