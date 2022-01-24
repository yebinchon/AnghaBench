#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct gdt_softc {int /*<<< orphan*/  sc_lock; int /*<<< orphan*/  sc_ucmd_queue; TYPE_1__* sc_hdr; int /*<<< orphan*/  sc_pending_gccb; int /*<<< orphan*/  sc_state; int /*<<< orphan*/  sc_devnode; } ;
struct TYPE_5__ {int DeviceNo; } ;
struct TYPE_6__ {TYPE_2__ cache; } ;
struct gdt_ccb {int /*<<< orphan*/  complete_flag; TYPE_3__ u; int /*<<< orphan*/  OpCode; int /*<<< orphan*/  service; } ;
typedef  struct gdt_ccb gdt_ucmd_t ;
struct TYPE_4__ {scalar_t__ hd_present; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GDT_CACHESERVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  GDT_D_CMD ; 
 int /*<<< orphan*/  GDT_FLUSH ; 
 int GDT_MAX_HDRIVES ; 
 int /*<<< orphan*/  GDT_SHUTDOWN ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_GDTBUF ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int PCATCH ; 
 int PRIBIO ; 
 struct gdt_ccb* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct gdt_ccb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gdt_ccb*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct gdt_ccb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct gdt_softc*) ; 
 int hz ; 
 int /*<<< orphan*/  links ; 
 struct gdt_ccb* FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct gdt_ccb*,int /*<<< orphan*/ *,int,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static void     
FUNC12( void *arg, int howto )
{
    struct gdt_softc *gdt;
    struct gdt_ccb *gccb;
    gdt_ucmd_t *ucmd;
    int i;

    gdt = (struct gdt_softc *)arg;
    FUNC0(GDT_D_CMD, ("iir_shutdown(%p, %d)\n", gdt, howto));

    FUNC4(gdt->sc_devnode,
	"Flushing all Host Drives. Please wait ...  ");

    /* allocate ucmd buffer */
    ucmd = FUNC7(sizeof(gdt_ucmd_t), M_GDTBUF, M_NOWAIT);
    if (ucmd == NULL) {
	FUNC11("\n");
        FUNC4(gdt->sc_devnode,
	    "iir_shutdown(): Cannot allocate resource\n");
        return;
    }
    FUNC3(ucmd, sizeof(gdt_ucmd_t));

    /* wait for pending IOs */
    FUNC8(&gdt->sc_lock);
    gdt->sc_state = GDT_SHUTDOWN;
    if ((gccb = FUNC1(&gdt->sc_pending_gccb)) != NULL)
        FUNC9(gccb, &gdt->sc_lock, PCATCH | PRIBIO, "iirshw", 100 * hz);

    /* flush */
    for (i = 0; i < GDT_MAX_HDRIVES; ++i) {
        if (gdt->sc_hdr[i].hd_present) {
            ucmd->service = GDT_CACHESERVICE;
            ucmd->OpCode = GDT_FLUSH;
            ucmd->u.cache.DeviceNo = i;
            FUNC2(&gdt->sc_ucmd_queue, ucmd, links);
            ucmd->complete_flag = FALSE;
            FUNC6(gdt);
            if (!ucmd->complete_flag)
                FUNC9(ucmd, &gdt->sc_lock, PCATCH | PRIBIO, "iirshw",
		    10 * hz);
        }
    }
    FUNC10(&gdt->sc_lock);

    FUNC5(ucmd, M_DEVBUF);
    FUNC11("Done.\n");
}