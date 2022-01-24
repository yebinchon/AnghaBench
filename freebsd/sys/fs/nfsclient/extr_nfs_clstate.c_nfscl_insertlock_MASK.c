#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nfscllockowner {int /*<<< orphan*/  nfsl_lock; } ;
struct nfscllock {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  cllocks; int /*<<< orphan*/  cllocallocks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfscllock*,struct nfscllock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct nfscllock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfslo_list ; 
 TYPE_1__ nfsstatsv1 ; 

__attribute__((used)) static void
FUNC2(struct nfscllockowner *lp, struct nfscllock *new_lop,
    struct nfscllock *insert_lop, int local)
{

	if ((struct nfscllockowner *)insert_lop == lp)
		FUNC1(&lp->nfsl_lock, new_lop, nfslo_list);
	else
		FUNC0(insert_lop, new_lop, nfslo_list);
	if (local)
		nfsstatsv1.cllocallocks++;
	else
		nfsstatsv1.cllocks++;
}