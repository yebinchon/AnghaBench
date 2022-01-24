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
struct passwd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char*) ; 
 struct passwd* FUNC1 (char*) ; 
 struct passwd* FUNC2 (long) ; 
 long FUNC3 (char*,char**,int) ; 

__attribute__((used)) static struct passwd *
FUNC4(char *u)
{
	struct passwd *pw;
	long id;
	char *ep;

	/*
	 * Translate user argument into a pw pointer.  First, try to
	 * get it as specified.  If that fails, try it as a number.
	 */
	if ((pw = FUNC1(u)))
		return(pw);
	id = FUNC3(u, &ep, 10);
	if (*u && !*ep && (pw = FUNC2(id)))
		return(pw);
	FUNC0(1, "%s: no such user", u);
	/* NOTREACHED */
}