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
struct sx {int dummy; } ;
struct lock_object {int dummy; } ;

/* Variables and functions */
 int SA_LOCKED ; 
 int SA_NOTRECURSED ; 
 int /*<<< orphan*/  FUNC0 (struct sx*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sx*) ; 
 scalar_t__ FUNC2 (struct sx*) ; 
 int /*<<< orphan*/  FUNC3 (struct sx*) ; 

uintptr_t
FUNC4(struct lock_object *lock)
{
	struct sx *sx;

	sx = (struct sx *)lock;
	FUNC0(sx, SA_LOCKED | SA_NOTRECURSED);
	if (FUNC2(sx)) {
		FUNC3(sx);
		return (0);
	} else {
		FUNC1(sx);
		return (1);
	}
}