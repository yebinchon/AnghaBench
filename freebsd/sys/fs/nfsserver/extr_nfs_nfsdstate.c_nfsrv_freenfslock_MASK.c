#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * le_prev; } ;
struct nfslock {TYPE_1__ lo_lckfile; } ;
struct TYPE_4__ {int /*<<< orphan*/  srvlocks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfslock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_NFSDLOCK ; 
 int /*<<< orphan*/  FUNC1 (struct nfslock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lo_lckfile ; 
 int /*<<< orphan*/  lo_lckowner ; 
 int /*<<< orphan*/  nfsrv_openpluslock ; 
 TYPE_2__ nfsstatsv1 ; 

__attribute__((used)) static void
FUNC2(struct nfslock *lop)
{

	if (lop->lo_lckfile.le_prev != NULL) {
		FUNC0(lop, lo_lckfile);
		nfsstatsv1.srvlocks--;
		nfsrv_openpluslock--;
	}
	FUNC0(lop, lo_lckowner);
	FUNC1(lop, M_NFSDLOCK);
}