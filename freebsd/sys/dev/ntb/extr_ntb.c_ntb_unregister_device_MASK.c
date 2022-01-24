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
struct ntb_child {int /*<<< orphan*/  ctx_lock; int /*<<< orphan*/  dev; struct ntb_child* next; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ntb_child** FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ntb_child*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(device_t dev)
{
	struct ntb_child **cpp = FUNC1(dev);
	struct ntb_child *nc;
	int error = 0;

	while ((nc = *cpp) != NULL) {
		*cpp = (*cpp)->next;
		error = FUNC0(dev, nc->dev);
		if (error)
			break;
		FUNC3(&nc->ctx_lock);
		FUNC2(nc, M_DEVBUF);
	}
	return (error);
}