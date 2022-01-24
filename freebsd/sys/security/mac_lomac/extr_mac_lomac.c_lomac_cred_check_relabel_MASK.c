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
struct mac_lomac {int ml_flags; } ;
struct label {int dummy; } ;

/* Variables and functions */
 int EPERM ; 
 int MAC_LOMAC_FLAGS_BOTH ; 
 int MAC_LOMAC_FLAG_RANGE ; 
 int MAC_LOMAC_FLAG_SINGLE ; 
 struct mac_lomac* FUNC0 (struct label*) ; 
 int FUNC1 (struct mac_lomac*,int) ; 
 scalar_t__ FUNC2 (struct mac_lomac*) ; 
 int /*<<< orphan*/  FUNC3 (struct mac_lomac*,struct mac_lomac*) ; 
 int /*<<< orphan*/  FUNC4 (struct mac_lomac*,struct mac_lomac*) ; 
 int /*<<< orphan*/  FUNC5 (struct mac_lomac*,struct mac_lomac*) ; 
 int /*<<< orphan*/  FUNC6 (struct mac_lomac*,struct mac_lomac*) ; 
 int FUNC7 (struct mac_lomac*) ; 

__attribute__((used)) static int
FUNC8(struct ucred *cred, struct label *newlabel)
{
	struct mac_lomac *subj, *new;
	int error;

	subj = FUNC0(cred->cr_label);
	new = FUNC0(newlabel);

	/*
	 * If there is a LOMAC label update for the credential, it may be an
	 * update of the single, range, or both.
	 */
	error = FUNC1(new, MAC_LOMAC_FLAGS_BOTH);
	if (error)
		return (error);

	/*
	 * If the LOMAC label is to be changed, authorize as appropriate.
	 */
	if (new->ml_flags & MAC_LOMAC_FLAGS_BOTH) {
		/*
		 * Fill in the missing parts from the previous label.
		 */
		if ((new->ml_flags & MAC_LOMAC_FLAG_SINGLE) == 0)
			FUNC4(subj, new);
		if ((new->ml_flags & MAC_LOMAC_FLAG_RANGE) == 0)
			FUNC3(subj, new);

		/*
		 * To change the LOMAC range on a credential, the new range
		 * label must be in the current range.
		 */
		if (!FUNC5(new, subj))
			return (EPERM);

		/*
		 * To change the LOMAC single label on a credential, the new
		 * single label must be in the new range.  Implicitly from
		 * the previous check, the new single is in the old range.
		 */
		if (!FUNC6(new, new))
			return (EPERM);

		/*
		 * To have EQUAL in any component of the new credential LOMAC
		 * label, the subject must already have EQUAL in their label.
		 */
		if (FUNC2(new)) {
			error = FUNC7(subj);
			if (error)
				return (error);
		}

		/*
		 * XXXMAC: Additional consistency tests regarding the single
		 * and range of the new label might be performed here.
		 */
	}

	return (0);
}