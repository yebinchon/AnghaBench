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
struct mac_lomac {int ml_flags; } ;
struct label {int dummy; } ;

/* Variables and functions */
 int EPERM ; 
 int MAC_LOMAC_FLAG_AUX ; 
 int MAC_LOMAC_FLAG_SINGLE ; 
 struct mac_lomac* FUNC0 (struct label*) ; 
 int FUNC1 (struct mac_lomac*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mac_lomac*,struct mac_lomac*) ; 
 scalar_t__ FUNC3 (struct mac_lomac*) ; 
 int /*<<< orphan*/  FUNC4 (struct mac_lomac*,struct mac_lomac*) ; 
 int /*<<< orphan*/  FUNC5 (struct mac_lomac*,struct mac_lomac*) ; 
 int FUNC6 (struct mac_lomac*) ; 

__attribute__((used)) static int
FUNC7(struct ucred *cred, struct vnode *vp,
    struct label *vplabel, struct label *newlabel)
{
	struct mac_lomac *old, *new, *subj;
	int error;

	old = FUNC0(vplabel);
	new = FUNC0(newlabel);
	subj = FUNC0(cred->cr_label);

	/*
	 * If there is a LOMAC label update for the vnode, it must be a
	 * single label, with an optional explicit auxiliary single.
	 */
	error = FUNC1(new,
	    MAC_LOMAC_FLAG_SINGLE | MAC_LOMAC_FLAG_AUX);
	if (error)
		return (error);

	/*
	 * To perform a relabel of the vnode (LOMAC label or not), LOMAC must
	 * authorize the relabel.
	 */
	if (!FUNC5(old, subj))
		return (EPERM);

	/*
	 * If the LOMAC label is to be changed, authorize as appropriate.
	 */
	if (new->ml_flags & MAC_LOMAC_FLAG_SINGLE) {
		/*
		 * To change the LOMAC label on a vnode, the new vnode label
		 * must be in the subject range.
		 */
		if (!FUNC5(new, subj))
			return (EPERM);

		/*
		 * To change the LOMAC label on the vnode to be EQUAL, the
		 * subject must have appropriate privilege.
		 */
		if (FUNC3(new)) {
			error = FUNC6(subj);
			if (error)
				return (error);
		}
	}
	if (new->ml_flags & MAC_LOMAC_FLAG_AUX) {
		/*
		 * Fill in the missing parts from the previous label.
		 */
		if ((new->ml_flags & MAC_LOMAC_FLAG_SINGLE) == 0)
			FUNC4(subj, new);

		/*
		 * To change the auxiliary LOMAC label on a vnode, the new
		 * vnode label must be in the subject range.
		 */
		if (!FUNC2(new, subj))
			return (EPERM);

		/*
		 * To change the auxiliary LOMAC label on the vnode to be
		 * EQUAL, the subject must have appropriate privilege.
		 */
		if (FUNC3(new)) {
			error = FUNC6(subj);
			if (error)
				return (error);
		}
	}

	return (0);
}