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
struct ifnet {int dummy; } ;

/* Variables and functions */
 int EPERM ; 
 int MAC_LOMAC_FLAGS_BOTH ; 
 int MAC_LOMAC_FLAG_RANGE ; 
 int MAC_LOMAC_FLAG_SINGLE ; 
 int /*<<< orphan*/  PRIV_NET_SETIFMAC ; 
 struct mac_lomac* FUNC0 (struct label*) ; 
 int FUNC1 (struct mac_lomac*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mac_lomac*,struct mac_lomac*) ; 
 int /*<<< orphan*/  FUNC3 (struct mac_lomac*,struct mac_lomac*) ; 
 int FUNC4 (struct mac_lomac*) ; 
 int FUNC5 (struct ucred*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct ucred *cred, struct ifnet *ifp,
    struct label *ifplabel, struct label *newlabel)
{
	struct mac_lomac *subj, *new;
	int error;

	subj = FUNC0(cred->cr_label);
	new = FUNC0(newlabel);

	/*
	 * If there is a LOMAC label update for the interface, it may be an
	 * update of the single, range, or both.
	 */
	error = FUNC1(new, MAC_LOMAC_FLAGS_BOTH);
	if (error)
		return (error);

	/*
	 * Relabling network interfaces requires LOMAC privilege.
	 */
	error = FUNC4(subj);
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
			FUNC3(subj, new);
		if ((new->ml_flags & MAC_LOMAC_FLAG_RANGE) == 0)
			FUNC2(subj, new);

		/*
		 * Rely on the traditional superuser status for the LOMAC
		 * interface relabel requirements.  XXXMAC: This will go
		 * away.
		 *
		 * XXXRW: This is also redundant to a higher layer check.
		 */
		error = FUNC5(cred, PRIV_NET_SETIFMAC);
		if (error)
			return (EPERM);

		/*
		 * XXXMAC: Additional consistency tests regarding the single
		 * and the range of the new label might be performed here.
		 */
	}

	return (0);
}