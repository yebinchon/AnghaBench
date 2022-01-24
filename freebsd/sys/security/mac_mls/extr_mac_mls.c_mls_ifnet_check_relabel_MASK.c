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
struct mac_mls {int dummy; } ;
struct label {int dummy; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAC_MLS_FLAGS_BOTH ; 
 struct mac_mls* FUNC0 (struct label*) ; 
 int FUNC1 (struct mac_mls*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mac_mls*) ; 

__attribute__((used)) static int
FUNC3(struct ucred *cred, struct ifnet *ifp,
    struct label *ifplabel, struct label *newlabel)
{
	struct mac_mls *subj, *new;
	int error;

	subj = FUNC0(cred->cr_label);
	new = FUNC0(newlabel);

	/*
	 * If there is an MLS label update for the interface, it may be an
	 * update of effective, range, or both.
	 */
	error = FUNC1(new, MAC_MLS_FLAGS_BOTH);
	if (error)
		return (error);

	/*
	 * Relabeling network interfaces requires MLS privilege.
	 */
	return (FUNC2(subj));
}