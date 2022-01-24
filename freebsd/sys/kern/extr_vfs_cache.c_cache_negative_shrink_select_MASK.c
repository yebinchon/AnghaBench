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
struct neglist {int /*<<< orphan*/  nl_lock; int /*<<< orphan*/  nl_list; } ;
struct namecache {int dummy; } ;

/* Variables and functions */
 struct namecache* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct neglist* neglists ; 
 int numneglists ; 

__attribute__((used)) static void
FUNC3(int start, struct namecache **ncpp,
    struct neglist **neglistpp)
{
	struct neglist *neglist;
	struct namecache *ncp;
	int i;

	*ncpp = ncp = NULL;
	neglist = NULL;

	for (i = start; i < numneglists; i++) {
		neglist = &neglists[i];
		if (FUNC0(&neglist->nl_list) == NULL)
			continue;
		FUNC1(&neglist->nl_lock);
		ncp = FUNC0(&neglist->nl_list);
		if (ncp != NULL)
			break;
		FUNC2(&neglist->nl_lock);
	}

	*neglistpp = neglist;
	*ncpp = ncp;
}