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
struct grouphead {char* g_name; struct group* g_list; } ;
struct group {char* ge_name; struct group* ge_link; } ;

/* Variables and functions */
 struct grouphead* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

void
FUNC2(char name[])
{
	struct grouphead *gh;
	struct group *gp;

	if ((gh = FUNC0(name)) == NULL) {
		FUNC1("\"%s\": not a group\n", name);
		return;
	}
	FUNC1("%s\t", gh->g_name);
	for (gp = gh->g_list; gp != NULL; gp = gp->ge_link)
		FUNC1(" %s", gp->ge_name);
	FUNC1("\n");
}