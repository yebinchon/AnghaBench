
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_11__ {int index; int ionode; } ;
struct TYPE_12__ {TYPE_1__ driver; } ;
struct TYPE_18__ {int size; TYPE_2__ eu; } ;
struct gdt_softc {int sc_state; int (* sc_get_status ) (struct gdt_softc*) ;int sc_info; int sc_status; int sc_ucmd_queue; TYPE_9__ sc_dvr; int sc_hanum; int sc_devnode; struct gdt_ccb* sc_gccbs; int sc_info2; int sc_service; int (* sc_intr ) (struct gdt_softc*,struct gdt_intr_ctx*) ;int sc_lock; } ;
struct gdt_intr_ctx {int istatus; int service; int info2; int info; int cmd_status; } ;
struct gdt_ccb {int gc_flags; int gc_scratch; TYPE_7__* gc_ucmd; int gc_service; } ;
struct TYPE_15__ {int sdlen; int sense_len; } ;
struct TYPE_14__ {int BlockCnt; } ;
struct TYPE_13__ {int param_size; } ;
struct TYPE_16__ {TYPE_5__ raw; TYPE_4__ cache; TYPE_3__ ioctl; } ;
struct TYPE_17__ {int data; TYPE_6__ u; int OpCode; int service; int complete_flag; int info; int status; } ;
typedef TYPE_7__ gdt_ucmd_t ;


 int GDT_ASYNCINDEX ;
 int GDT_CACHESERVICE ;
 int GDT_DPRINTF (int ,char*) ;
 int GDT_D_DEBUG ;
 int GDT_D_INTR ;
 int GDT_D_INVALID ;
 int GDT_ES_DRIVER ;



 int GDT_IOCTL ;
 int GDT_POLLING ;
 int GDT_POLL_WAIT ;
 int GDT_SECTOR_SIZE ;
 int GDT_SPEZINDEX ;
 int GDT_S_BSY ;
 int GDT_S_NO_STATUS ;
 int MA_OWNED ;
 int TAILQ_INSERT_HEAD (int *,TYPE_7__*,int ) ;
 int TRUE ;
 int bcopy (int ,int ,int) ;
 int device_get_nameunit (int ) ;
 int gdt_async_event (struct gdt_softc*,int ) ;
 int gdt_free_ccb (struct gdt_softc*,struct gdt_ccb*) ;
 int gdt_next (struct gdt_softc*) ;
 int gdt_store_event (int ,int,TYPE_9__*) ;
 int gdt_sync_event (struct gdt_softc*,int ,int,struct gdt_ccb*) ;
 int links ;
 int mtx_assert (int *,int ) ;
 int stub1 (struct gdt_softc*) ;
 int stub2 (struct gdt_softc*,struct gdt_intr_ctx*) ;
 int wakeup (TYPE_7__*) ;

int
iir_intr_locked(struct gdt_softc *gdt)
{
    struct gdt_intr_ctx ctx;
    struct gdt_ccb *gccb;
    gdt_ucmd_t *ucmd;
    u_int32_t cnt;

    GDT_DPRINTF(GDT_D_INTR, ("gdt_intr(%p)\n", gdt));

    mtx_assert(&gdt->sc_lock, MA_OWNED);


    if ((gdt->sc_state & GDT_POLLING) &&
        !(gdt->sc_state & GDT_POLL_WAIT))
        return (0);

    ctx.istatus = gdt->sc_get_status(gdt);
    if (ctx.istatus == 0x00) {
        gdt->sc_status = GDT_S_NO_STATUS;
        return (ctx.istatus);
    }

    gdt->sc_intr(gdt, &ctx);

    gdt->sc_status = ctx.cmd_status;
    gdt->sc_service = ctx.service;
    gdt->sc_info = ctx.info;
    gdt->sc_info2 = ctx.info2;

    if (ctx.istatus == GDT_ASYNCINDEX) {
        gdt_async_event(gdt, ctx.service);
        return (ctx.istatus);
    }
    if (ctx.istatus == GDT_SPEZINDEX) {
        GDT_DPRINTF(GDT_D_INVALID,
                    ("%s: Service unknown or not initialized!\n",
       device_get_nameunit(gdt->sc_devnode)));
        gdt->sc_dvr.size = sizeof(gdt->sc_dvr.eu.driver);
        gdt->sc_dvr.eu.driver.ionode = gdt->sc_hanum;
        gdt_store_event(GDT_ES_DRIVER, 4, &gdt->sc_dvr);
        return (ctx.istatus);
    }

    gccb = &gdt->sc_gccbs[ctx.istatus - 2];
    ctx.service = gccb->gc_service;

    switch (gccb->gc_flags) {
      case 128:
        GDT_DPRINTF(GDT_D_INVALID, ("%s: Index (%d) to unused command!\n",
      device_get_nameunit(gdt->sc_devnode), ctx.istatus));
        gdt->sc_dvr.size = sizeof(gdt->sc_dvr.eu.driver);
        gdt->sc_dvr.eu.driver.ionode = gdt->sc_hanum;
        gdt->sc_dvr.eu.driver.index = ctx.istatus;
        gdt_store_event(GDT_ES_DRIVER, 1, &gdt->sc_dvr);
        gdt_free_ccb(gdt, gccb);
 break;

      case 130:
        break;

      case 129:
        ucmd = gccb->gc_ucmd;
        if (gdt->sc_status == GDT_S_BSY) {
            GDT_DPRINTF(GDT_D_DEBUG, ("iir_intr(%p) ioctl: gccb %p busy\n",
                                      gdt, gccb));
            TAILQ_INSERT_HEAD(&gdt->sc_ucmd_queue, ucmd, links);
        } else {
            ucmd->status = gdt->sc_status;
            ucmd->info = gdt->sc_info;
            ucmd->complete_flag = TRUE;
            if (ucmd->service == GDT_CACHESERVICE) {
                if (ucmd->OpCode == GDT_IOCTL) {
                    cnt = ucmd->u.ioctl.param_size;
                    if (cnt != 0)
                        bcopy(gccb->gc_scratch, ucmd->data, cnt);
                } else {
                    cnt = ucmd->u.cache.BlockCnt * GDT_SECTOR_SIZE;
                    if (cnt != 0)
                        bcopy(gccb->gc_scratch, ucmd->data, cnt);
                }
            } else {
                cnt = ucmd->u.raw.sdlen;
                if (cnt != 0)
                    bcopy(gccb->gc_scratch, ucmd->data, cnt);
                if (ucmd->u.raw.sense_len != 0)
                    bcopy(gccb->gc_scratch, ucmd->data, cnt);
            }
            gdt_free_ccb(gdt, gccb);

            wakeup(ucmd);
        }
        gdt_next(gdt);
        break;

      default:
        gdt_free_ccb(gdt, gccb);
        gdt_sync_event(gdt, ctx.service, ctx.istatus, gccb);
        gdt_next(gdt);
        break;
    }

    return (ctx.istatus);
}
