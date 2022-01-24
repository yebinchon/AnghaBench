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
struct TYPE_3__ {void* arg; int /*<<< orphan*/  handle; } ;
typedef  TYPE_1__ pthread_t ;
typedef  int DWORD ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  INFINITE ; 
#define  WAIT_ABANDONED 129 
#define  WAIT_OBJECT_0 128 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(pthread_t *thread, void **value_ptr)
{
	DWORD result = FUNC1(thread->handle, INFINITE);
	switch (result) {
		case WAIT_OBJECT_0:
			if (value_ptr)
				*value_ptr = thread->arg;
			return 0;
		case WAIT_ABANDONED:
			return EINVAL;
		default:
			return FUNC2(FUNC0());
	}
}