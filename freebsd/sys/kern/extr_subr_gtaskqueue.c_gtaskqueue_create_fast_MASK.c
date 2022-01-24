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
typedef  int /*<<< orphan*/  taskqueue_enqueue_fn ;
struct gtaskqueue {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTX_SPIN ; 
 struct gtaskqueue* FUNC0 (char const*,int,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static struct gtaskqueue *
FUNC1(const char *name, int mflags,
		 taskqueue_enqueue_fn enqueue, void *context)
{
	return FUNC0(name, mflags, enqueue, context,
			MTX_SPIN, "fast_taskqueue");
}