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
struct inpcblbgrouphead {int dummy; } ;
struct inpcblbgroup {int il_inpcnt; int il_inpsiz; int /*<<< orphan*/ * il_inp; int /*<<< orphan*/  il_dependladdr; int /*<<< orphan*/  il_lport; int /*<<< orphan*/  il_vflag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 struct inpcblbgroup* FUNC1 (struct inpcblbgrouphead*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct inpcblbgroup*) ; 

__attribute__((used)) static struct inpcblbgroup *
FUNC3(struct inpcblbgrouphead *hdr,
    struct inpcblbgroup *old_grp, int size)
{
	struct inpcblbgroup *grp;
	int i;

	grp = FUNC1(hdr, old_grp->il_vflag,
	    old_grp->il_lport, &old_grp->il_dependladdr, size);
	if (grp == NULL)
		return (NULL);

	FUNC0(old_grp->il_inpcnt < grp->il_inpsiz,
	    ("invalid new local group size %d and old local group count %d",
	     grp->il_inpsiz, old_grp->il_inpcnt));

	for (i = 0; i < old_grp->il_inpcnt; ++i)
		grp->il_inp[i] = old_grp->il_inp[i];
	grp->il_inpcnt = old_grp->il_inpcnt;
	FUNC2(old_grp);
	return (grp);
}