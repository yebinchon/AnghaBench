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
struct bsdar {int dummy; } ;
struct ar_obj {int fd; struct ar_obj* name; int /*<<< orphan*/  size; struct ar_obj* maddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bsdar*,int /*<<< orphan*/ ,char*,struct ar_obj*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (struct ar_obj*) ; 
 scalar_t__ FUNC2 (struct ar_obj*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct bsdar *bsdar, struct ar_obj *obj)
{
	if (obj->fd == -1)
		FUNC1(obj->maddr);
	else
		if (obj->maddr != NULL && FUNC2(obj->maddr, obj->size))
			FUNC0(bsdar, errno,
			    "can't munmap file: %s", obj->name);
	FUNC1(obj->name);
	FUNC1(obj);
}