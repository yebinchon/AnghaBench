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
typedef  int uint32_t ;
struct ti_softc {int ti_cmd_saved_prodidx; } ;
struct ti_cmd_desc {int dummy; } ;
typedef  int /*<<< orphan*/ * caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ti_softc*,scalar_t__,int) ; 
 int /*<<< orphan*/  TI_CMD_RING_CNT ; 
 scalar_t__ TI_GCR_CMDRING ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ TI_MB_CMDPROD_IDX ; 

__attribute__((used)) static void
FUNC2(struct ti_softc *sc, struct ti_cmd_desc *cmd, caddr_t arg, int len)
{
	int index;
	int i;

	index = sc->ti_cmd_saved_prodidx;
	FUNC0(sc, TI_GCR_CMDRING + (index * 4), *(uint32_t *)(cmd));
	FUNC1(index, TI_CMD_RING_CNT);
	for (i = 0; i < len; i++) {
		FUNC0(sc, TI_GCR_CMDRING + (index * 4),
		    *(uint32_t *)(&arg[i * 4]));
		FUNC1(index, TI_CMD_RING_CNT);
	}
	FUNC0(sc, TI_MB_CMDPROD_IDX, index);
	sc->ti_cmd_saved_prodidx = index;
}