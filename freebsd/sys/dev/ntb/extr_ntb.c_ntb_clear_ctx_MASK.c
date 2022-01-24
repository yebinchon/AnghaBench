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
struct ntb_child {int /*<<< orphan*/  ctx_lock; int /*<<< orphan*/ * ctx_ops; int /*<<< orphan*/ * ctx; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct ntb_child* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(device_t ntb)
{
	struct ntb_child *nc = FUNC0(ntb);

	FUNC1(&nc->ctx_lock);
	nc->ctx = NULL;
	nc->ctx_ops = NULL;
	FUNC2(&nc->ctx_lock);
}