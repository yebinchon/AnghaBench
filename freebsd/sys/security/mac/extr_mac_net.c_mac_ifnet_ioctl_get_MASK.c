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
struct mac {int /*<<< orphan*/  m_string; int /*<<< orphan*/  m_buflen; } ;
struct label {int dummy; } ;
struct ifreq {int dummy; } ;
struct ifnet {int /*<<< orphan*/  if_label; } ;
typedef  int /*<<< orphan*/  mac ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*,int) ; 
 int MPC_OBJECT_IFNET ; 
 int /*<<< orphan*/  M_MACTEMP ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int FUNC2 (int /*<<< orphan*/ ,struct mac*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ifreq*) ; 
 int FUNC7 (struct mac*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct label*) ; 
 int FUNC9 (struct label*,char*,char*,int /*<<< orphan*/ ) ; 
 struct label* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct label*) ; 
 int mac_labeled ; 
 char* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC13 (char*) ; 

int
FUNC14(struct ucred *cred, struct ifreq *ifr,
    struct ifnet *ifp)
{
	char *elements, *buffer;
	struct label *intlabel;
	struct mac mac;
	int error, locked;

	if (!(mac_labeled & MPC_OBJECT_IFNET))
		return (EINVAL);

	error = FUNC2(FUNC6(ifr), &mac, sizeof(mac));
	if (error)
		return (error);

	error = FUNC7(&mac);
	if (error)
		return (error);

	elements = FUNC12(mac.m_buflen, M_MACTEMP, M_WAITOK);
	error = FUNC3(mac.m_string, elements, mac.m_buflen, NULL);
	if (error) {
		FUNC5(elements, M_MACTEMP);
		return (error);
	}

	buffer = FUNC12(mac.m_buflen, M_MACTEMP, M_WAITOK | M_ZERO);
	intlabel = FUNC10();
	FUNC0(ifp, locked);
	FUNC8(ifp->if_label, intlabel);
	FUNC1(ifp, locked);
	error = FUNC9(intlabel, elements, buffer,
	    mac.m_buflen);
	FUNC11(intlabel);
	if (error == 0)
		error = FUNC4(buffer, mac.m_string, FUNC13(buffer)+1);

	FUNC5(buffer, M_MACTEMP);
	FUNC5(elements, M_MACTEMP);

	return (error);
}