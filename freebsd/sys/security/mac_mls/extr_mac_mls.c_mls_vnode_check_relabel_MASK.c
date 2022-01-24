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
struct mac_mls {int mm_flags; } ;
struct label {int dummy; } ;

/* Variables and functions */
 int EPERM ; 
 int MAC_MLS_FLAG_EFFECTIVE ; 
 struct mac_mls* FUNC0 (struct label*) ; 
 int FUNC1 (struct mac_mls*,int) ; 
 scalar_t__ FUNC2 (struct mac_mls*) ; 
 int /*<<< orphan*/  FUNC3 (struct mac_mls*,struct mac_mls*) ; 
 int FUNC4 (struct mac_mls*) ; 

__attribute__((used)) static int
FUNC5(struct ucred *cred, struct vnode *vp,
    struct label *vplabel, struct label *newlabel)
{
	struct mac_mls *old, *new, *subj;
	int error;

	old = FUNC0(vplabel);
	new = FUNC0(newlabel);
	subj = FUNC0(cred->cr_label);

	/*
	 * If there is an MLS label update for the vnode, it must be a
	 * effective label.
	 */
	error = FUNC1(new, MAC_MLS_FLAG_EFFECTIVE);
	if (error)
		return (error);

	/*
	 * To perform a relabel of the vnode (MLS label or not), MLS must
	 * authorize the relabel.
	 */
	if (!FUNC3(old, subj))
		return (EPERM);

	/*
	 * If the MLS label is to be changed, authorize as appropriate.
	 */
	if (new->mm_flags & MAC_MLS_FLAG_EFFECTIVE) {
		/*
		 * To change the MLS label on a vnode, the new vnode label
		 * must be in the subject range.
		 */
		if (!FUNC3(new, subj))
			return (EPERM);

		/*
		 * To change the MLS label on the vnode to be EQUAL, the
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