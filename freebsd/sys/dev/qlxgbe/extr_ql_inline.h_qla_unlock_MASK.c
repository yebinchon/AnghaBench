#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char const* qla_unlock; int /*<<< orphan*/  hw_lock; scalar_t__ hw_lock_held; } ;
typedef  TYPE_1__ qla_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __inline void
FUNC2(qla_host_t *ha, const char *str)
{
	FUNC0(&ha->hw_lock);
	ha->hw_lock_held = 0;
	ha->qla_unlock = str;
	FUNC1(&ha->hw_lock);

//	if (!ha->enable_error_recovery)
//		device_printf(ha->pci_dev, "%s: %s\n", __func__, str);

	return;
}