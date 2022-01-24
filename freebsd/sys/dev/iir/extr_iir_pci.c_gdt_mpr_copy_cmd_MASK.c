#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  int u_int16_t ;
struct gdt_softc {int sc_cmd_off; int /*<<< orphan*/  sc_dpmem; int /*<<< orphan*/  sc_cmd_cnt; } ;
struct gdt_ccb {int gc_service; scalar_t__ gc_cmd; int /*<<< orphan*/  gc_cmd_len; } ;

/* Variables and functions */
 int GDT_COMM_QUEUE ; 
 int GDT_COMM_Q_SZ ; 
 int GDT_DPMEM_COMMAND_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int GDT_DPR_CMD ; 
 int /*<<< orphan*/  GDT_D_CMD ; 
 int GDT_MPR_IC ; 
 int GDT_OFFSET ; 
 int GDT_SERV_ID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 

void
FUNC5(struct gdt_softc *gdt, struct gdt_ccb *gccb)
{
    u_int16_t cp_count = FUNC4(gccb->gc_cmd_len, sizeof (u_int32_t));
    u_int16_t dp_offset = gdt->sc_cmd_off;
    u_int16_t cmd_no = gdt->sc_cmd_cnt++;

    FUNC0(GDT_D_CMD, ("gdt_mpr_copy_cmd(%p) ", gdt));

    gdt->sc_cmd_off += cp_count;

    FUNC2(gdt->sc_dpmem, GDT_MPR_IC + GDT_DPR_CMD + dp_offset, 
	(u_int32_t *)gccb->gc_cmd, cp_count >> 2);
    FUNC1(gdt->sc_dpmem,
	GDT_MPR_IC + GDT_COMM_QUEUE + cmd_no * GDT_COMM_Q_SZ + GDT_OFFSET,
	FUNC3(GDT_DPMEM_COMMAND_OFFSET + dp_offset));
    FUNC1(gdt->sc_dpmem,
	GDT_MPR_IC + GDT_COMM_QUEUE + cmd_no * GDT_COMM_Q_SZ + GDT_SERV_ID,
	FUNC3(gccb->gc_service));
}