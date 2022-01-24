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
struct nicvf {int /*<<< orphan*/  ifp; int /*<<< orphan*/  if_media; int /*<<< orphan*/ * reg_base; int /*<<< orphan*/  stats_mtx; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nicvf*) ; 
 int /*<<< orphan*/  FUNC1 (struct nicvf*) ; 
 int /*<<< orphan*/  FUNC2 (struct nicvf*) ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct nicvf* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct nicvf*) ; 
 int /*<<< orphan*/  FUNC9 (struct nicvf*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	struct nicvf *nic;

	nic = FUNC4(dev);

	FUNC0(nic);
	/* Shut down the port and release ring resources */
	FUNC9(nic);
	/* Release stats lock */
	FUNC7(&nic->stats_mtx);
	/* Release interrupts */
	FUNC8(nic);
	/* Release memory resource */
	if (nic->reg_base != NULL) {
		FUNC3(dev, SYS_RES_MEMORY,
		    FUNC10(nic->reg_base), nic->reg_base);
	}

	/* Remove all ifmedia configurations */
	FUNC6(&nic->if_media);
	/* Free this ifnet */
	FUNC5(nic->ifp);
	FUNC2(nic);
	/* Finally destroy the lock */
	FUNC1(nic);

	return (0);
}