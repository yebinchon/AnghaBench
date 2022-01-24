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
struct grouphead {char* g_name; struct grouphead* g_link; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char*) ; 
 struct grouphead** groups ; 
 size_t FUNC1 (char*) ; 

struct grouphead *
FUNC2(char name[])
{
	struct grouphead *gh;

	for (gh = groups[FUNC1(name)]; gh != NULL; gh = gh->g_link)
		if (*gh->g_name == *name && FUNC0(gh->g_name, name))
			return (gh);
	return (NULL);
}