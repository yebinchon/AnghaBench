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
struct object {int flags; } ;

/* Variables and functions */
 int REACHABLE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct object*) ; 
 int /*<<< orphan*/  FUNC2 (struct object*) ; 
 int /*<<< orphan*/  FUNC3 (struct object*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ verbose ; 

__attribute__((used)) static void FUNC5(struct object *obj)
{
	if (verbose)
		FUNC4(stderr, FUNC0("Checking %s"), FUNC3(obj));

	if (obj->flags & REACHABLE)
		FUNC1(obj);
	else
		FUNC2(obj);
}