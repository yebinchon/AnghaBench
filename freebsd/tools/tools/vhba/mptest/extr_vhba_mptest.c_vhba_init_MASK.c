#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  lock; TYPE_2__* private; } ;
typedef  TYPE_1__ vhba_softc_t ;
struct TYPE_7__ {int disk_size; int* luns; int /*<<< orphan*/  qt; int /*<<< orphan*/  inproc; int /*<<< orphan*/  tick; int /*<<< orphan*/  disk; TYPE_1__* vhba; } ;
typedef  TYPE_2__ mptest_t ;

/* Variables and functions */
 int DISK_SIZE ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  VMP_TIME ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  vhba_task ; 
 int /*<<< orphan*/  vhba_timer ; 

void
FUNC5(vhba_softc_t *vhba)
{
	static mptest_t vhbastatic;

	vhbastatic.vhba = vhba;
	vhbastatic.disk_size = DISK_SIZE << 20;
	vhbastatic.disk = FUNC4(vhbastatic.disk_size, M_DEVBUF, M_WAITOK|M_ZERO);
	vhba->private = &vhbastatic;
	FUNC2(&vhbastatic.tick, &vhba->lock, 0);
	FUNC3(&vhbastatic.tick, VMP_TIME, vhba_timer, vhba);
	FUNC0(&vhbastatic.inproc);
	FUNC1(&vhbastatic.qt, 0, vhba_task, &vhbastatic);
	vhbastatic.luns[0] = 1;
	vhbastatic.luns[1] = 1;
}