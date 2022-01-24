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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct bnxt_softc {scalar_t__ admin_ticks; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;

/* Variables and functions */
 scalar_t__ hz ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct bnxt_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ticks ; 

__attribute__((used)) static void
FUNC2(if_ctx_t ctx, uint16_t qid)
{

	struct bnxt_softc *softc = FUNC1(ctx);
	uint64_t ticks_now = ticks; 

        /* Schedule bnxt_update_admin_status() once per sec */
        if (ticks_now - softc->admin_ticks >= hz) {
		softc->admin_ticks = ticks_now;
		FUNC0(ctx);
	}

	return;
}