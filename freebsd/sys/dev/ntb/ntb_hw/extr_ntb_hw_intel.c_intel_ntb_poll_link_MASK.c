#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ uint16_t ;
struct ntb_softc {scalar_t__ type; scalar_t__ ntb_ctl; scalar_t__ lnk_sta; int peer_msix_good; int peer_msix_done; int /*<<< orphan*/  peer_msix_work; TYPE_2__* reg; int /*<<< orphan*/  device; int /*<<< orphan*/  db_link_mask; TYPE_1__* self_reg; } ;
struct TYPE_4__ {int /*<<< orphan*/  lnk_sta; int /*<<< orphan*/  ntb_ctl; } ;
struct TYPE_3__ {int /*<<< orphan*/  db_bell; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ntb_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ NTB_ATOM ; 
 int /*<<< orphan*/  NTB_SB01BASE_LOCKUP ; 
 scalar_t__ FUNC1 (struct ntb_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ntb_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ntb_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  intel_ntb_exchange_msix ; 
 void* FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool
FUNC6(struct ntb_softc *ntb)
{
	uint32_t ntb_cntl;
	uint16_t reg_val;

	if (ntb->type == NTB_ATOM) {
		ntb_cntl = FUNC4(4, ntb->reg->ntb_ctl);
		if (ntb_cntl == ntb->ntb_ctl)
			return (false);

		ntb->ntb_ctl = ntb_cntl;
		ntb->lnk_sta = FUNC4(4, ntb->reg->lnk_sta);
	} else {
		FUNC3(ntb, ntb->self_reg->db_bell, ntb->db_link_mask);

		reg_val = FUNC5(ntb->device, ntb->reg->lnk_sta, 2);
		if (reg_val == ntb->lnk_sta)
			return (false);

		ntb->lnk_sta = reg_val;

		if (FUNC0(ntb, NTB_SB01BASE_LOCKUP)) {
			if (FUNC1(ntb)) {
				if (!ntb->peer_msix_good) {
					FUNC2(&ntb->peer_msix_work, 0,
					    intel_ntb_exchange_msix, ntb);
					return (false);
				}
			} else {
				ntb->peer_msix_good = false;
				ntb->peer_msix_done = false;
			}
		}
	}
	return (true);
}