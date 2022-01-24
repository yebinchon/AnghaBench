#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_4__ {scalar_t__ offset; } ;
struct port_info {TYPE_3__ phy; TYPE_1__ mac; } ;
typedef  int /*<<< orphan*/  adapter_t ;
struct TYPE_5__ {int /*<<< orphan*/  (* intr_disable ) (TYPE_3__*) ;} ;

/* Variables and functions */
 scalar_t__ A_XGM_INT_ENABLE ; 
 struct port_info* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC3(adapter_t *adapter, int idx)
{
	struct port_info *pi = FUNC0(adapter, idx);

	FUNC2(adapter, A_XGM_INT_ENABLE + pi->mac.offset, 0);
	pi->phy.ops->intr_disable(&pi->phy);
}