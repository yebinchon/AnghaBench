#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ntb_softc {scalar_t__ type; int /*<<< orphan*/  db_mask_lock; int /*<<< orphan*/  device; int /*<<< orphan*/  peer_msix_work; int /*<<< orphan*/  lr_timer; int /*<<< orphan*/  heartbeat_timer; int /*<<< orphan*/  db_valid_mask; TYPE_1__* self_reg; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  db_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ntb_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ntb_softc*) ; 
 scalar_t__ NTB_XEON ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ntb_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ntb_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ntb_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct ntb_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct ntb_softc*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(device_t device)
{
	struct ntb_softc *ntb;

	ntb = FUNC4(device);

	/* Detach & delete all children */
	FUNC9(device);

	if (ntb->self_reg != NULL) {
		FUNC0(ntb);
		FUNC3(ntb, ntb->self_reg->db_mask, ntb->db_valid_mask);
		FUNC1(ntb);
	}
	FUNC2(&ntb->heartbeat_timer);
	FUNC2(&ntb->lr_timer);
	FUNC2(&ntb->peer_msix_work);
	FUNC10(ntb->device);
	if (ntb->type == NTB_XEON)
		FUNC6(ntb);
	FUNC5(ntb);

	FUNC8(&ntb->db_mask_lock);

	FUNC7(ntb);

	return (0);
}