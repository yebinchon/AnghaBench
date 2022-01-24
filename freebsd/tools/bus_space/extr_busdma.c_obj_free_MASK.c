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
struct obj {size_t oid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct obj*) ; 
 int /*<<< orphan*/ ** oidtbl ; 

__attribute__((used)) static int
FUNC1(struct obj *obj)
{

	oidtbl[obj->oid] = NULL;
	FUNC0(obj);
	return (0);
}