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
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 int /*<<< orphan*/  dry_run ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int,void*,unsigned long) ; 

__attribute__((used)) static void FUNC3(enum object_type type, unsigned long size,
				   unsigned nr)
{
	void *buf = FUNC1(size);

	if (!dry_run && buf)
		FUNC2(nr, type, buf, size);
	else
		FUNC0(buf);
}