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
struct smbnode {char const* n_rpath; int n_rplen; } ;
struct smb_vc {int dummy; } ;
struct mbchain {int dummy; } ;

/* Variables and functions */
 int SMB_CS_NONE ; 
 int SMB_CS_UPPER ; 
 scalar_t__ FUNC0 (struct smb_vc*) ; 
 scalar_t__ SMB_DIALECT_LANMAN1_0 ; 
 scalar_t__ FUNC1 (struct smb_vc*) ; 
 int FUNC2 (struct mbchain*) ; 
 int FUNC3 (struct mbchain*,char) ; 
 int FUNC4 (struct mbchain*,char) ; 
 int FUNC5 (struct mbchain*,struct smb_vc*,char const*,int,int) ; 

int
FUNC6(struct mbchain *mbp, struct smb_vc *vcp, struct smbnode *dnp,
	const char *name, int nmlen)
{
	int caseopt = SMB_CS_NONE;
	int error;

	if (FUNC1(vcp)) {
		error = FUNC2(mbp);
		if (error)
			return error;
	}
	if (FUNC0(vcp) < SMB_DIALECT_LANMAN1_0)
		caseopt |= SMB_CS_UPPER;
	if (dnp != NULL) {
		error = FUNC5(mbp, vcp, dnp->n_rpath, dnp->n_rplen, 
		    caseopt);
		if (error)
			return error;
		if (name) {
			/* Put the separator */
			if (FUNC1(vcp))
				error = FUNC3(mbp, '\\');
			else
				error = FUNC4(mbp, '\\');
			if (error)
				return error;
			/* Put the name */
			error = FUNC5(mbp, vcp, name, nmlen, caseopt);
			if (error)
				return error;
		}
	}
	/* Put NULL terminator. */
	if (FUNC1(vcp))
		error = FUNC3(mbp, 0);
	else
		error = FUNC4(mbp, 0);
	return error;
}