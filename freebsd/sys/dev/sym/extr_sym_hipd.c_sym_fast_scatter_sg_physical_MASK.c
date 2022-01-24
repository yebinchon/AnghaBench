#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sym_tblmove {void* size; void* addr; } ;
typedef  int /*<<< orphan*/  hcb_p ;
typedef  TYPE_2__* ccb_p ;
struct TYPE_8__ {scalar_t__ ds_len; scalar_t__ ds_addr; } ;
typedef  TYPE_3__ bus_dma_segment_t ;
struct TYPE_6__ {struct sym_tblmove* data; } ;
struct TYPE_7__ {int segments; TYPE_1__ phys; } ;

/* Variables and functions */
 int DEBUG_FLAGS ; 
 int DEBUG_SCATTER ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int SYM_CONF_MAX_SG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,long,long) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(hcb_p np, ccb_p cp,
			     bus_dma_segment_t *psegs, int nsegs)
{
	struct sym_tblmove *data;
	bus_dma_segment_t *psegs2;

	FUNC0(MA_OWNED);

	if (nsegs > SYM_CONF_MAX_SG)
		return -1;

	data   = &cp->phys.data[SYM_CONF_MAX_SG-1];
	psegs2 = &psegs[nsegs-1];
	cp->segments = nsegs;

	while (1) {
		data->addr = FUNC1(psegs2->ds_addr);
		data->size = FUNC1(psegs2->ds_len);
		if (DEBUG_FLAGS & DEBUG_SCATTER) {
			FUNC2 ("%s scatter: paddr=%lx len=%ld\n",
				FUNC3(np), (long) psegs2->ds_addr,
				(long) psegs2->ds_len);
		}
		if (psegs2 != psegs) {
			--data;
			--psegs2;
			continue;
		}
		break;
	}
	return 0;
}