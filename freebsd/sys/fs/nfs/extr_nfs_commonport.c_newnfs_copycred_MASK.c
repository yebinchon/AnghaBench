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
struct ucred {int /*<<< orphan*/  cr_uid; } ;
struct nfscred {scalar_t__ nfsc_ngroups; int /*<<< orphan*/  nfsc_groups; int /*<<< orphan*/  nfsc_uid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ucred*,scalar_t__,int /*<<< orphan*/ ) ; 

void
FUNC2(struct nfscred *nfscr, struct ucred *cr)
{

	FUNC0(nfscr->nfsc_ngroups >= 0,
	    ("newnfs_copycred: negative nfsc_ngroups"));
	cr->cr_uid = nfscr->nfsc_uid;
	FUNC1(cr, nfscr->nfsc_ngroups, nfscr->nfsc_groups);
}