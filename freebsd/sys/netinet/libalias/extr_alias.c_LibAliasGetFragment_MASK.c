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
struct libalias {int dummy; } ;
struct ip {int /*<<< orphan*/  ip_id; int /*<<< orphan*/  ip_src; } ;
struct alias_link {int dummy; } ;

/* Variables and functions */
 struct alias_link* FUNC0 (struct libalias*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct alias_link*,char**) ; 
 int /*<<< orphan*/  FUNC2 (struct libalias*) ; 
 int /*<<< orphan*/  FUNC3 (struct libalias*) ; 
 int /*<<< orphan*/  FUNC4 (struct alias_link*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct alias_link*,int /*<<< orphan*/ *) ; 

char           *
FUNC6(struct libalias *la, char *ptr)
{
	struct alias_link *lnk;
	char *fptr;
	struct ip *pip;

	FUNC2(la);
	pip = (struct ip *)ptr;
	lnk = FUNC0(la, pip->ip_src, pip->ip_id);
	if (lnk != NULL) {
		FUNC1(lnk, &fptr);
		FUNC5(lnk, NULL);
		FUNC4(lnk, 0);	/* Deletes link */
	} else		
		fptr = NULL;

	FUNC3(la);
	return (fptr);
}