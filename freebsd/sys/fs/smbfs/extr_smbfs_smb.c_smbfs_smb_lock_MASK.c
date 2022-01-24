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
struct smbnode {TYPE_1__* n_mount; } ;
struct smb_share {int dummy; } ;
struct smb_cred {int dummy; } ;
typedef  int /*<<< orphan*/  off_t ;
typedef  scalar_t__ caddr_t ;
struct TYPE_2__ {struct smb_share* sm_share; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SMB_DIALECT_LANMAN1_0 ; 
 int /*<<< orphan*/  FUNC1 (struct smb_share*) ; 
 int FUNC2 (struct smbnode*,int,uintptr_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct smb_cred*) ; 

int
FUNC3(struct smbnode *np, int op, caddr_t id,
	off_t start, off_t end,	struct smb_cred *scred)
{
	struct smb_share *ssp = np->n_mount->sm_share;

	if (FUNC0(FUNC1(ssp)) < SMB_DIALECT_LANMAN1_0)
		/*
		 * TODO: use LOCK_BYTE_RANGE here.
		 */
		return EINVAL;
	else
		return FUNC2(np, op, (uintptr_t)id, start, end, scred);
}