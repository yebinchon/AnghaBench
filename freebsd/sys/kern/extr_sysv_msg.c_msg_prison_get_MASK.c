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
struct vfsoptlist {int dummy; } ;
struct prison {int dummy; } ;
typedef  int /*<<< orphan*/  jsys ;

/* Variables and functions */
 int ENOENT ; 
 int JAIL_SYS_DISABLE ; 
 int JAIL_SYS_INHERIT ; 
 int JAIL_SYS_NEW ; 
 int /*<<< orphan*/  msg_prison_slot ; 
 struct prison* FUNC0 (struct prison*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct prison*) ; 
 int /*<<< orphan*/  FUNC2 (struct prison*) ; 
 int FUNC3 (struct vfsoptlist*,char*,int*,int) ; 

__attribute__((used)) static int
FUNC4(void *obj, void *data)
{
	struct prison *pr = obj;
	struct prison *rpr;
	struct vfsoptlist *opts = data;
	int error, jsys;

	/* Set sysvmsg based on the jail's root prison. */
	FUNC1(pr);
	rpr = FUNC0(pr, msg_prison_slot);
	FUNC2(pr);
	jsys = rpr == NULL ? JAIL_SYS_DISABLE
	    : rpr == pr ? JAIL_SYS_NEW : JAIL_SYS_INHERIT;
	error = FUNC3(opts, "sysvmsg", &jsys, sizeof(jsys));
	if (error == ENOENT)
		error = 0;
	return (error);
}