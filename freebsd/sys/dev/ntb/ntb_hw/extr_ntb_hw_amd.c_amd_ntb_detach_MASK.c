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
struct amd_ntb_softc {int /*<<< orphan*/  device; int /*<<< orphan*/  db_mask_lock; int /*<<< orphan*/  hb_timer; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amd_ntb_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct amd_ntb_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct amd_ntb_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct amd_ntb_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(device_t device)
{
	struct amd_ntb_softc *ntb = FUNC4(device);

	FUNC6(device);
	FUNC0(ntb);
	FUNC3(&ntb->hb_timer);
	FUNC1(ntb);
	FUNC5(&ntb->db_mask_lock);
	FUNC7(ntb->device);
	FUNC2(ntb);

	return (0);
}