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
struct vnode {int dummy; } ;
struct ucred {struct label* cr_label; } ;
struct mac_biba {int dummy; } ;
struct label {int dummy; } ;

/* Variables and functions */
 int EACCES ; 
 int MAP_SHARED ; 
 struct mac_biba* FUNC0 (struct label*) ; 
 int VM_PROT_EXECUTE ; 
 int VM_PROT_READ ; 
 int VM_PROT_WRITE ; 
 int /*<<< orphan*/  FUNC1 (struct mac_biba*,struct mac_biba*) ; 
 int /*<<< orphan*/  biba_enabled ; 
 int /*<<< orphan*/  revocation_enabled ; 

__attribute__((used)) static int
FUNC2(struct ucred *cred, struct vnode *vp,
    struct label *vplabel, int prot, int flags)
{
	struct mac_biba *subj, *obj;

	/*
	 * Rely on the use of open()-time protections to handle
	 * non-revocation cases.
	 */
	if (!biba_enabled || !revocation_enabled)
		return (0);

	subj = FUNC0(cred->cr_label);
	obj = FUNC0(vplabel);

	if (prot & (VM_PROT_READ | VM_PROT_EXECUTE)) {
		if (!FUNC1(obj, subj))
			return (EACCES);
	}
	if (((prot & VM_PROT_WRITE) != 0) && ((flags & MAP_SHARED) != 0)) {
		if (!FUNC1(subj, obj))
			return (EACCES);
	}

	return (0);
}