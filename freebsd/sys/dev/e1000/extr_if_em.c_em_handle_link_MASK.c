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
struct TYPE_3__ {int get_link_status; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct adapter {TYPE_2__ hw; } ;
typedef  void* if_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 struct adapter* FUNC1 (void*) ; 

__attribute__((used)) static void
FUNC2(void *context)
{
	if_ctx_t ctx = context;
	struct adapter *adapter = FUNC1(ctx);

	adapter->hw.mac.get_link_status = 1;
	FUNC0(ctx);
}