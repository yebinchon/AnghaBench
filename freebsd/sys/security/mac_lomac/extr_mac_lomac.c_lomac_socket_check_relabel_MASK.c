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
struct socket {int dummy; } ;
struct mac_lomac {int ml_flags; } ;
struct label {int dummy; } ;

/* Variables and functions */
 int EPERM ; 
 int MAC_LOMAC_FLAG_SINGLE ; 
 struct mac_lomac* FUNC0 (struct label*) ; 
 int /*<<< orphan*/  FUNC1 (struct socket*) ; 
 int FUNC2 (struct mac_lomac*,int) ; 
 scalar_t__ FUNC3 (struct mac_lomac*) ; 
 int /*<<< orphan*/  FUNC4 (struct mac_lomac*,struct mac_lomac*) ; 
 int FUNC5 (struct mac_lomac*) ; 

__attribute__((used)) static int
FUNC6(struct ucred *cred, struct socket *so,
    struct label *solabel, struct label *newlabel)
{
	struct mac_lomac *subj, *obj, *new;
	int error;

	FUNC1(so);

	new = FUNC0(newlabel);
	subj = FUNC0(cred->cr_label);
	obj = FUNC0(solabel);

	/*
	 * If there is a LOMAC label update for the socket, it may be an
	 * update of single.
	 */
	error = FUNC2(new, MAC_LOMAC_FLAG_SINGLE);
	if (error)
		return (error);

	/*
	 * To relabel a socket, the old socket single must be in the subject
	 * range.
	 */
	if (!FUNC4(obj, subj))
		return (EPERM);

	/*
	 * If the LOMAC label is to be changed, authorize as appropriate.
	 */
	if (new->ml_flags & MAC_LOMAC_FLAG_SINGLE) {
		/*
		 * To relabel a socket, the new socket single must be in the
		 * subject range.
		 */
		if (!FUNC4(new, subj))
			return (EPERM);

		/*
		 * To change the LOMAC label on the socket to contain EQUAL,
		 * the subject must have appropriate privilege.
		 */
		if (FUNC3(new)) {
			error = FUNC5(subj);
			if (error)
				return (error);
		}
	}

	return (0);
}