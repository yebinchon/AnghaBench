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
struct ntb_softc {scalar_t__ type; int /*<<< orphan*/  device; int /*<<< orphan*/  db_mask_lock; int /*<<< orphan*/  peer_msix_work; int /*<<< orphan*/  lr_timer; int /*<<< orphan*/  heartbeat_timer; void* msix_mw_idx; void* b2b_mw_idx; int /*<<< orphan*/  features; } ;
struct ntb_hw_info {scalar_t__ type; int /*<<< orphan*/  features; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 void* B2B_MW_DISABLED ; 
 int /*<<< orphan*/  MTX_SPIN ; 
 scalar_t__ NTB_ATOM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 struct ntb_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ntb_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ntb_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ntb_softc*) ; 
 int FUNC6 (struct ntb_softc*) ; 
 struct ntb_hw_info* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ntb_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct ntb_softc*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ntb_softc*) ; 
 int FUNC12 (struct ntb_softc*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC17(device_t device)
{
	struct ntb_softc *ntb;
	struct ntb_hw_info *p;
	int error;

	ntb = FUNC1(device);
	p = FUNC7(FUNC16(device));

	ntb->device = device;
	ntb->type = p->type;
	ntb->features = p->features;
	ntb->b2b_mw_idx = B2B_MW_DISABLED;
	ntb->msix_mw_idx = B2B_MW_DISABLED;

	/* Heartbeat timer for NTB_ATOM since there is no link interrupt */
	FUNC0(&ntb->heartbeat_timer, 1);
	FUNC0(&ntb->lr_timer, 1);
	FUNC0(&ntb->peer_msix_work, 1);
	FUNC13(&ntb->db_mask_lock, "ntb hw bits", NULL, MTX_SPIN);

	if (ntb->type == NTB_ATOM)
		error = FUNC4(ntb);
	else
		error = FUNC6(ntb);
	if (error != 0)
		goto out;

	FUNC5(ntb);

	FUNC15(ntb->device);

	error = FUNC8(ntb);
	if (error != 0)
		goto out;
	if (ntb->type == NTB_ATOM)
		error = FUNC2(ntb);
	else
		error = FUNC12(ntb);
	if (error != 0)
		goto out;

	FUNC10(device);

	FUNC9(ntb);

	FUNC11(ntb);

	/* Attach children to this controller */
	error = FUNC14(device);

out:
	if (error != 0)
		FUNC3(device);
	return (error);
}