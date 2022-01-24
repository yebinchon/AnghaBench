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
struct TYPE_6__ {scalar_t__ target_id; int /*<<< orphan*/  status; scalar_t__ ccb_sim_ptr; } ;
struct TYPE_4__ {scalar_t__* cdb_bytes; } ;
struct TYPE_5__ {int cdb_len; TYPE_1__ cdb_io; } ;
union ccb {TYPE_3__ ccb_h; TYPE_2__ csio; } ;
typedef  scalar_t__ u_int8_t ;
typedef  int u_int32_t ;
typedef  scalar_t__ u_int16_t ;
struct scsi_rw_6 {int length; int /*<<< orphan*/  addr; } ;
struct scsi_rw_10 {int /*<<< orphan*/  length; int /*<<< orphan*/  addr; } ;
struct gdt_softc {scalar_t__ sc_cmd_off; scalar_t__ sc_ic_all_size; scalar_t__ sc_cmd_cnt; int sc_state; int /*<<< orphan*/  sc_buffer_dmat; int /*<<< orphan*/  (* sc_set_sema0 ) (struct gdt_softc*) ;int /*<<< orphan*/  sc_devnode; } ;
struct gdt_ccb {int gc_cmd_index; union ccb* gc_ccb; int /*<<< orphan*/  gc_dmamap; scalar_t__ gc_cmd; int /*<<< orphan*/  gc_flags; int /*<<< orphan*/  gc_service; } ;
struct cam_sim {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_RELEASE_SIMQ ; 
 int EINPROGRESS ; 
 int /*<<< orphan*/  GDT_CACHESERVICE ; 
 scalar_t__ GDT_CACHE_BLOCKCNT ; 
 scalar_t__ GDT_CACHE_BLOCKNO ; 
 scalar_t__ GDT_CACHE_DEVICENO ; 
 scalar_t__ GDT_CACHE_SZ ; 
 scalar_t__ GDT_CMD_COMMANDINDEX ; 
 scalar_t__ GDT_CMD_OPCODE ; 
 int /*<<< orphan*/  GDT_CMD_SZ ; 
 scalar_t__ GDT_CMD_UNION ; 
 scalar_t__ GDT_DPMEM_COMMAND_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  GDT_D_CMD ; 
 int /*<<< orphan*/  GDT_D_DEBUG ; 
 int /*<<< orphan*/  GDT_D_INVALID ; 
 int /*<<< orphan*/  GDT_GCF_SCSI ; 
 scalar_t__ GDT_READ ; 
 int GDT_SHUTDOWN ; 
 scalar_t__ GDT_WRITE ; 
 scalar_t__ GDT_WRITE_THR ; 
 int SRW_TOPADDR ; 
 scalar_t__ WRITE_10 ; 
 scalar_t__ WRITE_6 ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union ccb*,int /*<<< orphan*/ ,struct gdt_ccb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int) ; 
 struct gdt_ccb* FUNC6 (struct gdt_softc*) ; 
 int /*<<< orphan*/  gdtexecuteccb ; 
 scalar_t__ FUNC7 (scalar_t__,int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct gdt_softc*) ; 
 int /*<<< orphan*/  FUNC12 (struct cam_sim*,int) ; 

__attribute__((used)) static struct gdt_ccb *
FUNC13(struct gdt_softc *gdt, union ccb *ccb)
{
    struct gdt_ccb *gccb;
    struct cam_sim *sim;
    u_int8_t *cmdp;
    u_int16_t opcode;
    u_int32_t blockno, blockcnt;
    int error;

    FUNC0(GDT_D_CMD, ("gdt_cache_cmd(%p, %p)\n", gdt, ccb));

    if (FUNC7(GDT_CMD_UNION + GDT_CACHE_SZ, sizeof(u_int32_t)) +
        gdt->sc_cmd_off + GDT_DPMEM_COMMAND_OFFSET >
        gdt->sc_ic_all_size) {
        FUNC0(GDT_D_INVALID, ("%s: gdt_cache_cmd(): DPMEM overflow\n", 
		FUNC3(gdt->sc_devnode)));
        return (NULL);
    }

    gccb = FUNC6(gdt);
    if (gccb == NULL) {
        FUNC0(GDT_D_DEBUG, ("%s: No free command index found\n",
		FUNC3(gdt->sc_devnode)));
        return (gccb);
    }
    FUNC2(gccb->gc_cmd, GDT_CMD_SZ);
    sim = (struct cam_sim *)ccb->ccb_h.ccb_sim_ptr;
    gccb->gc_ccb = ccb;
    gccb->gc_service = GDT_CACHESERVICE;
    gccb->gc_flags = GDT_GCF_SCSI;
        
    if (gdt->sc_cmd_cnt == 0)
        gdt->sc_set_sema0(gdt);
    FUNC5(gccb->gc_cmd + GDT_CMD_COMMANDINDEX,
              gccb->gc_cmd_index);
    cmdp = ccb->csio.cdb_io.cdb_bytes;
    opcode = (*cmdp == WRITE_6 || *cmdp == WRITE_10) ? GDT_WRITE : GDT_READ;
    if ((gdt->sc_state & GDT_SHUTDOWN) && opcode == GDT_WRITE)
        opcode = GDT_WRITE_THR;
    FUNC4(gccb->gc_cmd + GDT_CMD_OPCODE, opcode);
 
    FUNC4(gccb->gc_cmd + GDT_CMD_UNION + GDT_CACHE_DEVICENO,
              ccb->ccb_h.target_id);
    if (ccb->csio.cdb_len == 6) {
        struct scsi_rw_6 *rw = (struct scsi_rw_6 *)cmdp;
        blockno = FUNC9(rw->addr) & ((SRW_TOPADDR<<16) | 0xffff);
        blockcnt = rw->length ? rw->length : 0x100;
    } else {
        struct scsi_rw_10 *rw = (struct scsi_rw_10 *)cmdp;
        blockno = FUNC10(rw->addr);
        blockcnt = FUNC8(rw->length);
    }
    FUNC5(gccb->gc_cmd + GDT_CMD_UNION + GDT_CACHE_BLOCKNO,
              blockno);
    FUNC5(gccb->gc_cmd + GDT_CMD_UNION + GDT_CACHE_BLOCKCNT,
              blockcnt);

    error = FUNC1(gdt->sc_buffer_dmat,
                                gccb->gc_dmamap,
                                ccb,
                                gdtexecuteccb,
                                gccb, /*flags*/0);
    if (error == EINPROGRESS) {
        FUNC12(sim, 1);
        gccb->gc_ccb->ccb_h.status |= CAM_RELEASE_SIMQ;
    }
    return (gccb);
}