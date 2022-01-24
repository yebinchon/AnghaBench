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
struct mac_biba {int mb_flags; } ;
struct label {int dummy; } ;

/* Variables and functions */
 int EPERM ; 
 int MAC_BIBA_FLAG_EFFECTIVE ; 
 struct mac_biba* FUNC0 (struct label*) ; 
 int FUNC1 (struct mac_biba*,int) ; 
 scalar_t__ FUNC2 (struct mac_biba*) ; 
 int /*<<< orphan*/  FUNC3 (struct mac_biba*,struct mac_biba*) ; 
 int FUNC4 (struct mac_biba*) ; 

__attribute__((used)) static int
FUNC5(struct ucred *cred, struct vnode *vp,
    struct label *vplabel, struct label *newlabel)
{
	struct mac_biba *old, *new, *subj;
	int error;

	old = FUNC0(vplabel);
	new = FUNC0(newlabel);
	subj = FUNC0(cred->cr_label);

	/*
	 * If there is a Biba label update for the vnode, it must be a
	 * effective label.
	 */
	error = FUNC1(new, MAC_BIBA_FLAG_EFFECTIVE);
	if (error)
		return (error);

	/*
	 * To perform a relabel of the vnode (Biba label or not), Biba must
	 * authorize the relabel.
	 */
	if (!FUNC3(old, subj))
		return (EPERM);

	/*
	 * If the Biba label is to be changed, authorize as appropriate.
	 */
	if (new->mb_flags & MAC_BIBA_FLAG_EFFECTIVE) {
		/*
		 * To change the Biba label on a vnode, the new vnode label
		 * must be in the subject range.
		 */
		if (!FUNC3(new, subj))
			return (EPERM);

		/*
		 * To change the Biba label on the vnode to be EQUAL, the
		 * subject must have appropriate privilege.
		 */
		if (FUNC2(new)) {
			error = FUNC4(subj);
			if (error)
				return (error);
		}
	}

	return (0);
}