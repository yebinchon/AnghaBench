#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  eh; } ;
typedef  TYPE_1__ IAL_ADAPTER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  shutdown_final ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
		IAL_ADAPTER_T *pAdapter;
	
		pAdapter = FUNC3(dev);

		FUNC1(shutdown_final, pAdapter->eh);
		FUNC4(&pAdapter->lock);
		FUNC2(pAdapter);
		FUNC5(&pAdapter->lock);
		  /* give the flush some time to happen, 
		    *otherwise "shutdown -p now" will make file system corrupted */
		FUNC0(1000 * 1000 * 5);
		return 0;
}