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
struct ucred {int dummy; } ;
struct mac {int /*<<< orphan*/  m_buflen; int /*<<< orphan*/  m_string; } ;
struct label {int dummy; } ;
struct ifreq {int dummy; } ;
struct ifnet {int /*<<< orphan*/  if_label; } ;
typedef  int /*<<< orphan*/  mac ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ucred*,struct ifnet*,int /*<<< orphan*/ ,struct label*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct ucred*,struct ifnet*,int /*<<< orphan*/ ,struct label*) ; 
 int MPC_OBJECT_IFNET ; 
 int /*<<< orphan*/  M_MACTEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  PRIV_NET_SETIFMAC ; 
 int FUNC4 (int /*<<< orphan*/ ,struct mac*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ifnet_check_relabel ; 
 int /*<<< orphan*/  ifnet_relabel ; 
 int /*<<< orphan*/  FUNC7 (struct ifreq*) ; 
 int FUNC8 (struct mac*) ; 
 int FUNC9 (struct label*,char*) ; 
 struct label* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct label*) ; 
 int mac_labeled ; 
 char* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct ucred*,int /*<<< orphan*/ ) ; 

int
FUNC14(struct ucred *cred, struct ifreq *ifr, struct ifnet *ifp)
{
	struct label *intlabel;
	struct mac mac;
	char *buffer;
	int error, locked;

	if (!(mac_labeled & MPC_OBJECT_IFNET))
		return (EINVAL);

	error = FUNC4(FUNC7(ifr), &mac, sizeof(mac));
	if (error)
		return (error);

	error = FUNC8(&mac);
	if (error)
		return (error);

	buffer = FUNC12(mac.m_buflen, M_MACTEMP, M_WAITOK);
	error = FUNC5(mac.m_string, buffer, mac.m_buflen, NULL);
	if (error) {
		FUNC6(buffer, M_MACTEMP);
		return (error);
	}

	intlabel = FUNC10();
	error = FUNC9(intlabel, buffer);
	FUNC6(buffer, M_MACTEMP);
	if (error) {
		FUNC11(intlabel);
		return (error);
	}

	/*
	 * XXX: Note that this is a redundant privilege check, since policies
	 * impose this check themselves if required by the policy
	 * Eventually, this should go away.
	 */
	error = FUNC13(cred, PRIV_NET_SETIFMAC);
	if (error) {
		FUNC11(intlabel);
		return (error);
	}

	FUNC0(ifp, locked);
	FUNC2(ifnet_check_relabel, cred, ifp,
	    ifp->if_label, intlabel);
	if (error) {
		FUNC1(ifp, locked);
		FUNC11(intlabel);
		return (error);
	}

	FUNC3(ifnet_relabel, cred, ifp, ifp->if_label,
	    intlabel);
	FUNC1(ifp, locked);

	FUNC11(intlabel);
	return (0);
}