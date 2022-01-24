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
struct thread {int dummy; } ;
struct smbiod {struct thread* iod_td; struct smb_vc* iod_vc; } ;
struct smb_vc {int /*<<< orphan*/ * vc_tdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct smb_vc*,struct thread*) ; 
 int /*<<< orphan*/  FUNC1 (struct smb_vc*,struct thread*) ; 

__attribute__((used)) static void
FUNC2(struct smbiod *iod)
{
	struct smb_vc *vcp = iod->iod_vc;
	struct thread *td = iod->iod_td;

	if (vcp->vc_tdata == NULL)
		return;
	FUNC0(vcp, td);
	FUNC1(vcp, td);
	vcp->vc_tdata = NULL;
}