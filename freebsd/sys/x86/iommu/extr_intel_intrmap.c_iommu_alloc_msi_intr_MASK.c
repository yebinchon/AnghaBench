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
typedef  size_t vmem_addr_t ;
typedef  size_t u_int ;
struct dmar_unit {int /*<<< orphan*/  irtids; int /*<<< orphan*/  ir_enabled; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int M_FIRSTFIT ; 
 int M_NOWAIT ; 
 struct dmar_unit* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,size_t,int,size_t*) ; 

int
FUNC3(device_t src, u_int *cookies, u_int count)
{
	struct dmar_unit *unit;
	vmem_addr_t vmem_res;
	u_int idx, i;
	int error;

	unit = FUNC1(src, NULL, NULL);
	if (unit == NULL || !unit->ir_enabled) {
		for (i = 0; i < count; i++)
			cookies[i] = -1;
		return (EOPNOTSUPP);
	}

	error = FUNC2(unit->irtids, count, M_FIRSTFIT | M_NOWAIT,
	    &vmem_res);
	if (error != 0) {
		FUNC0(error != EOPNOTSUPP,
		    ("impossible EOPNOTSUPP from vmem"));
		return (error);
	}
	idx = vmem_res;
	for (i = 0; i < count; i++)
		cookies[i] = idx + i;
	return (0);
}