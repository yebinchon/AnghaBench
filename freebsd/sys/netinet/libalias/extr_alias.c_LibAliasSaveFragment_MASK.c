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
 int /*<<< orphan*/  FUNC1 (struct libalias*) ; 
 int /*<<< orphan*/  FUNC2 (struct libalias*) ; 
 int PKT_ALIAS_ERROR ; 
 int PKT_ALIAS_OK ; 
 int /*<<< orphan*/  FUNC3 (struct alias_link*,char*) ; 

int
FUNC4(struct libalias *la, char *ptr)
{
	int iresult;
	struct alias_link *lnk;
	struct ip *pip;

	FUNC1(la);
	pip = (struct ip *)ptr;
	lnk = FUNC0(la, pip->ip_src, pip->ip_id);
	iresult = PKT_ALIAS_ERROR;
	if (lnk != NULL) {
		FUNC3(lnk, ptr);
		iresult = PKT_ALIAS_OK;
	}
	FUNC2(la);
	return (iresult);
}