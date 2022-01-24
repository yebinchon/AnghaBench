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
struct socket {int dummy; } ;
struct mac {int /*<<< orphan*/  m_buflen; int /*<<< orphan*/  m_string; } ;
struct label {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int MPC_OBJECT_SOCKET ; 
 int /*<<< orphan*/  M_MACTEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mac*) ; 
 int mac_labeled ; 
 int FUNC3 (struct label*,char*) ; 
 struct label* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct label*) ; 
 int FUNC6 (struct ucred*,struct socket*,struct label*) ; 
 char* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC8(struct ucred *cred, struct socket *so, struct mac *mac)
{
	struct label *intlabel;
	char *buffer;
	int error;

	if (!(mac_labeled & MPC_OBJECT_SOCKET))
		return (EINVAL);

	error = FUNC2(mac);
	if (error)
		return (error);

	buffer = FUNC7(mac->m_buflen, M_MACTEMP, M_WAITOK);
	error = FUNC0(mac->m_string, buffer, mac->m_buflen, NULL);
	if (error) {
		FUNC1(buffer, M_MACTEMP);
		return (error);
	}

	intlabel = FUNC4(M_WAITOK);
	error = FUNC3(intlabel, buffer);
	FUNC1(buffer, M_MACTEMP);
	if (error)
		goto out;

	error = FUNC6(cred, so, intlabel);
out:
	FUNC5(intlabel);
	return (error);
}