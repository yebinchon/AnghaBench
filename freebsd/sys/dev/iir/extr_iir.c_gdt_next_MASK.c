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
struct ccb_hdr {int target_id; int target_lun; int flags; int /*<<< orphan*/  status; scalar_t__ ccb_sim_ptr; } ;
struct ccb_scsiio {int cdb_len; } ;
union ccb {struct ccb_hdr ccb_h; struct ccb_scsiio csio; } ;
typedef  scalar_t__ u_int8_t ;
struct gdt_softc {int sc_state; scalar_t__ sc_cmd_cnt; scalar_t__ sc_cmd_off; int sc_virt_bus; int /*<<< orphan*/  (* sc_release_event ) (struct gdt_softc*) ;int /*<<< orphan*/  sc_ccb_queue; TYPE_1__* sc_hdr; int /*<<< orphan*/  sc_ucmd_queue; scalar_t__ (* sc_test_busy ) (struct gdt_softc*) ;int /*<<< orphan*/  sc_lock; } ;
struct gdt_ccb {int dummy; } ;
struct cam_sim {int dummy; } ;
typedef  struct ccb_hdr gdt_ucmd_t ;
struct TYPE_6__ {scalar_t__ req_queue_act; scalar_t__ req_queue_max; int /*<<< orphan*/  io_count_act; } ;
struct TYPE_5__ {int /*<<< orphan*/  tqe; } ;
struct TYPE_4__ {int /*<<< orphan*/  hd_present; } ;

/* Variables and functions */
 int CAM_CDB_PHYS ; 
 int /*<<< orphan*/  CAM_DEV_NOT_THERE ; 
 int /*<<< orphan*/  CAM_REQ_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  GDT_D_QUEUE ; 
 int GDT_MAX_HDRIVES ; 
 int GDT_POLLING ; 
 int /*<<< orphan*/  GDT_POLL_TIMEOUT ; 
 int /*<<< orphan*/  MA_OWNED ; 
 scalar_t__ READ_10 ; 
 scalar_t__ READ_6 ; 
 struct ccb_hdr* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct ccb_hdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct ccb_hdr*,int /*<<< orphan*/ ) ; 
 int TRUE ; 
 scalar_t__ WRITE_10 ; 
 scalar_t__ WRITE_6 ; 
 int FUNC5 (struct cam_sim*) ; 
 struct gdt_ccb* FUNC6 (struct gdt_softc*,union ccb*) ; 
 int /*<<< orphan*/  FUNC7 (struct gdt_softc*,union ccb*) ; 
 struct gdt_ccb* FUNC8 (struct gdt_softc*,struct ccb_hdr*) ; 
 struct gdt_ccb* FUNC9 (struct gdt_softc*,union ccb*) ; 
 TYPE_3__ gdt_stat ; 
 int /*<<< orphan*/  FUNC10 (struct gdt_softc*,struct gdt_ccb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  links ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC12 (struct ccb_scsiio*) ; 
 TYPE_2__ sim_links ; 
 scalar_t__ FUNC13 (struct gdt_softc*) ; 
 scalar_t__ FUNC14 (struct gdt_softc*) ; 
 int /*<<< orphan*/  FUNC15 (struct gdt_softc*) ; 
 int /*<<< orphan*/  FUNC16 (union ccb*) ; 

void    
FUNC17(struct gdt_softc *gdt)
{
    union ccb *ccb;
    gdt_ucmd_t *ucmd;
    struct cam_sim *sim;
    int bus, target, lun;
    int next_cmd;

    struct ccb_scsiio *csio;
    struct ccb_hdr *ccbh;
    struct gdt_ccb *gccb = NULL;
    u_int8_t cmd;

    FUNC1(GDT_D_QUEUE, ("gdt_next(%p)\n", gdt));

    FUNC11(&gdt->sc_lock, MA_OWNED);
    if (gdt->sc_test_busy(gdt)) {
        if (!(gdt->sc_state & GDT_POLLING)) {
            return;
        }
        while (gdt->sc_test_busy(gdt))
            FUNC0(1);
    }

    gdt->sc_cmd_cnt = gdt->sc_cmd_off = 0;
    next_cmd = TRUE;
    for (;;) {
        /* I/Os in queue? controller ready? */
        if (!FUNC2(&gdt->sc_ucmd_queue) &&
            !FUNC2(&gdt->sc_ccb_queue))
            break;

        /* 1.: I/Os without ccb (IOCTLs) */
        ucmd = FUNC2(&gdt->sc_ucmd_queue);
        if (ucmd != NULL) {
            FUNC4(&gdt->sc_ucmd_queue, ucmd, links);
            if ((gccb = FUNC8(gdt, ucmd)) == NULL) {
                FUNC3(&gdt->sc_ucmd_queue, ucmd, links);
                break;
            }
            break;      
            /* wenn mehrere Kdos. zulassen: if (!gdt_polling) continue; */
        }

        /* 2.: I/Os with ccb */
        ccb = (union ccb *)FUNC2(&gdt->sc_ccb_queue); 
        /* ist dann immer != NULL, da oben getestet */
        sim = (struct cam_sim *)ccb->ccb_h.ccb_sim_ptr;
        bus = FUNC5(sim);
        target = ccb->ccb_h.target_id;
        lun = ccb->ccb_h.target_lun;
    
        FUNC4(&gdt->sc_ccb_queue, &ccb->ccb_h, sim_links.tqe);
        --gdt_stat.req_queue_act;
        /* ccb->ccb_h.func_code is XPT_SCSI_IO */
        FUNC1(GDT_D_QUEUE, ("XPT_SCSI_IO flags 0x%x)\n", 
                                  ccb->ccb_h.flags));
        csio = &ccb->csio;
        ccbh = &ccb->ccb_h;
        cmd  = FUNC12(csio)[0];
        /* Max CDB length is 12 bytes, can't be phys addr */
        if (csio->cdb_len > 12 || (ccbh->flags & CAM_CDB_PHYS)) { 
            ccbh->status = CAM_REQ_INVALID;
            --gdt_stat.io_count_act;
            FUNC16(ccb);
        } else if (bus != gdt->sc_virt_bus) {
            /* raw service command */
            if ((gccb = FUNC9(gdt, ccb)) == NULL) {
                FUNC3(&gdt->sc_ccb_queue, &ccb->ccb_h, 
                                  sim_links.tqe);
                ++gdt_stat.req_queue_act;
                if (gdt_stat.req_queue_act > gdt_stat.req_queue_max)
                    gdt_stat.req_queue_max = gdt_stat.req_queue_act;
                next_cmd = FALSE;
            }
        } else if (target >= GDT_MAX_HDRIVES || 
                   !gdt->sc_hdr[target].hd_present || lun != 0) {
            ccbh->status = CAM_DEV_NOT_THERE;
            --gdt_stat.io_count_act;
            FUNC16(ccb);
        } else {
            /* cache service command */
            if (cmd == READ_6  || cmd == WRITE_6 ||
                cmd == READ_10 || cmd == WRITE_10) {
                if ((gccb = FUNC6(gdt, ccb)) == NULL) {
                    FUNC3(&gdt->sc_ccb_queue, &ccb->ccb_h, 
                                      sim_links.tqe);
                    ++gdt_stat.req_queue_act;
                    if (gdt_stat.req_queue_act > gdt_stat.req_queue_max)
                        gdt_stat.req_queue_max = gdt_stat.req_queue_act;
                    next_cmd = FALSE;
                }
            } else {
                FUNC7(gdt, ccb);
            }
        }           
        if ((gdt->sc_state & GDT_POLLING) || !next_cmd)
            break;
    }
    if (gdt->sc_cmd_cnt > 0)
        gdt->sc_release_event(gdt);

    if ((gdt->sc_state & GDT_POLLING) && gdt->sc_cmd_cnt > 0) {
        FUNC10(gdt, gccb, GDT_POLL_TIMEOUT);
    }
}