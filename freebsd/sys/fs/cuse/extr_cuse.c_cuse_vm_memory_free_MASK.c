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
struct cuse_memory {int /*<<< orphan*/  object; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_CUSE ; 
 int /*<<< orphan*/  FUNC0 (struct cuse_memory*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct cuse_memory *mem)
{
	/* last user is gone - free */
	FUNC1(mem->object);

	/* free CUSE memory */
	FUNC0(mem, M_CUSE);
}