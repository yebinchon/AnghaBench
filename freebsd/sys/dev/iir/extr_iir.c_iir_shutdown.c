
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct gdt_softc {int sc_lock; int sc_ucmd_queue; TYPE_1__* sc_hdr; int sc_pending_gccb; int sc_state; int sc_devnode; } ;
struct TYPE_5__ {int DeviceNo; } ;
struct TYPE_6__ {TYPE_2__ cache; } ;
struct gdt_ccb {int complete_flag; TYPE_3__ u; int OpCode; int service; } ;
typedef struct gdt_ccb gdt_ucmd_t ;
struct TYPE_4__ {scalar_t__ hd_present; } ;


 int FALSE ;
 int GDT_CACHESERVICE ;
 int GDT_DPRINTF (int ,char*) ;
 int GDT_D_CMD ;
 int GDT_FLUSH ;
 int GDT_MAX_HDRIVES ;
 int GDT_SHUTDOWN ;
 int M_DEVBUF ;
 int M_GDTBUF ;
 int M_NOWAIT ;
 int PCATCH ;
 int PRIBIO ;
 struct gdt_ccb* SLIST_FIRST (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct gdt_ccb*,int ) ;
 int bzero (struct gdt_ccb*,int) ;
 int device_printf (int ,char*) ;
 int free (struct gdt_ccb*,int ) ;
 int gdt_next (struct gdt_softc*) ;
 int hz ;
 int links ;
 struct gdt_ccb* malloc (int,int ,int ) ;
 int mtx_lock (int *) ;
 int mtx_sleep (struct gdt_ccb*,int *,int,char*,int) ;
 int mtx_unlock (int *) ;
 int printf (char*) ;

__attribute__((used)) static void
iir_shutdown( void *arg, int howto )
{
    struct gdt_softc *gdt;
    struct gdt_ccb *gccb;
    gdt_ucmd_t *ucmd;
    int i;

    gdt = (struct gdt_softc *)arg;
    GDT_DPRINTF(GDT_D_CMD, ("iir_shutdown(%p, %d)\n", gdt, howto));

    device_printf(gdt->sc_devnode,
 "Flushing all Host Drives. Please wait ...  ");


    ucmd = malloc(sizeof(gdt_ucmd_t), M_GDTBUF, M_NOWAIT);
    if (ucmd == ((void*)0)) {
 printf("\n");
        device_printf(gdt->sc_devnode,
     "iir_shutdown(): Cannot allocate resource\n");
        return;
    }
    bzero(ucmd, sizeof(gdt_ucmd_t));


    mtx_lock(&gdt->sc_lock);
    gdt->sc_state = GDT_SHUTDOWN;
    if ((gccb = SLIST_FIRST(&gdt->sc_pending_gccb)) != ((void*)0))
        mtx_sleep(gccb, &gdt->sc_lock, PCATCH | PRIBIO, "iirshw", 100 * hz);


    for (i = 0; i < GDT_MAX_HDRIVES; ++i) {
        if (gdt->sc_hdr[i].hd_present) {
            ucmd->service = GDT_CACHESERVICE;
            ucmd->OpCode = GDT_FLUSH;
            ucmd->u.cache.DeviceNo = i;
            TAILQ_INSERT_TAIL(&gdt->sc_ucmd_queue, ucmd, links);
            ucmd->complete_flag = FALSE;
            gdt_next(gdt);
            if (!ucmd->complete_flag)
                mtx_sleep(ucmd, &gdt->sc_lock, PCATCH | PRIBIO, "iirshw",
      10 * hz);
        }
    }
    mtx_unlock(&gdt->sc_lock);

    free(ucmd, M_DEVBUF);
    printf("Done.\n");
}
