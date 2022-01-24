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
struct autofs_node {char* an_name; struct autofs_node* an_parent; struct autofs_mount* an_mount; } ;
struct autofs_mount {char* am_mountpoint; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_AUTOFS ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 char* FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*) ; 

__attribute__((used)) static char *
FUNC6(struct autofs_node *anp)
{
	struct autofs_mount *amp;
	char *path, *tmp;

	amp = anp->an_mount;

	path = FUNC4("", M_AUTOFS);
	for (; anp->an_parent != NULL; anp = anp->an_parent) {
		tmp = FUNC1(FUNC5(anp->an_name) + FUNC5(path) + 2,
		    M_AUTOFS, M_WAITOK);
		FUNC3(tmp, anp->an_name);
		FUNC2(tmp, "/");
		FUNC2(tmp, path);
		FUNC0(path, M_AUTOFS);
		path = tmp;
	}

	tmp = FUNC1(FUNC5(amp->am_mountpoint) + FUNC5(path) + 2,
	    M_AUTOFS, M_WAITOK);
	FUNC3(tmp, amp->am_mountpoint);
	FUNC2(tmp, "/");
	FUNC2(tmp, path);
	FUNC0(path, M_AUTOFS);
	path = tmp;

	return (path);
}