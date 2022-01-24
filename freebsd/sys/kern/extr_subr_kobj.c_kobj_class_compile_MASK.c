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
typedef  int /*<<< orphan*/  kobj_class_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(kobj_class_t cls)
{
	int error;

	error = FUNC1(cls, M_WAITOK);
	FUNC0(error == 0, ("kobj_class_compile1 returned %d", error));
}