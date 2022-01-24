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
struct ucred {struct label* cr_label; } ;
struct pipepair {int dummy; } ;
struct mac_lomac {int ml_flags; } ;
struct label {int dummy; } ;

/* Variables and functions */
 int EPERM ; 
 int MAC_LOMAC_FLAG_SINGLE ; 
 struct mac_lomac* FUNC0 (struct label*) ; 
 int FUNC1 (struct mac_lomac*,int) ; 
 scalar_t__ FUNC2 (struct mac_lomac*) ; 
 int /*<<< orphan*/  FUNC3 (struct mac_lomac*,struct mac_lomac*) ; 
 int FUNC4 (struct mac_lomac*) ; 

__attribute__((used)) static int
FUNC5(struct ucred *cred, struct pipepair *pp,
    struct label *pplabel, struct label *newlabel)
{
	struct mac_lomac *subj, *obj, *new;
	int error;

	new = FUNC0(newlabel);
	subj = FUNC0(cred->cr_label);
	obj = FUNC0(pplabel);

	/*
	 * If there is a LOMAC label update for a pipe, it must be a single
	 * update.
	 */
	error = FUNC1(new, MAC_LOMAC_FLAG_SINGLE);
	if (error)
		return (error);

	/*
	 * To perform a relabel of a pipe (LOMAC label or not), LOMAC must
	 * authorize the relabel.
	 */
	if (!FUNC3(obj, subj))
		return (EPERM);

	/*
	 * If the LOMAC label is to be changed, authorize as appropriate.
	 */
	if (new->ml_flags & MAC_LOMAC_FLAG_SINGLE) {
		/*
		 * To change the LOMAC label on a pipe, the new pipe label
		 * must be in the subject range.
		 */
		if (!FUNC3(new, subj))
			return (EPERM);

		/*
		 * To change the LOMAC label on a pipe to be EQUAL, the
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