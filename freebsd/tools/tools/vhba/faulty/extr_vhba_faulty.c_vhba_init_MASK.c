#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* private; } ;
typedef  TYPE_1__ vhba_softc_t ;
struct TYPE_6__ {int disk_size; int ctr; int /*<<< orphan*/  qt; int /*<<< orphan*/  disk; TYPE_1__* vhba; } ;
typedef  TYPE_2__ faulty_t ;

/* Variables and functions */
 int DISK_SIZE ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  vhba_task ; 

void
FUNC3(vhba_softc_t *vhba)
{
	static faulty_t vhbastatic;
	vhbastatic.vhba = vhba;
	vhbastatic.disk_size = DISK_SIZE << 20;
	vhbastatic.disk = FUNC2(vhbastatic.disk_size, M_DEVBUF, M_WAITOK|M_ZERO);
	vhba->private = &vhbastatic;
	vhbastatic.ctr = (FUNC1() & 0xffff) + 1;
	FUNC0(&vhbastatic.qt, 0, vhba_task, &vhbastatic);
}