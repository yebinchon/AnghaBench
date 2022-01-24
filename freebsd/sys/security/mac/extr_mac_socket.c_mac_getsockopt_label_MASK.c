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
struct socket {int /*<<< orphan*/  so_label; } ;
struct mac {int /*<<< orphan*/  m_string; int /*<<< orphan*/  m_buflen; } ;
struct label {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int MPC_OBJECT_SOCKET ; 
 int /*<<< orphan*/  M_MACTEMP ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (struct socket*) ; 
 int /*<<< orphan*/  FUNC1 (struct socket*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mac*) ; 
 int mac_labeled ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct label*) ; 
 int FUNC7 (struct label*,char*,char*,int /*<<< orphan*/ ) ; 
 struct label* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct label*) ; 
 char* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (char*) ; 

int
FUNC12(struct ucred *cred, struct socket *so, struct mac *mac)
{
	char *buffer, *elements;
	struct label *intlabel;
	int error;

	if (!(mac_labeled & MPC_OBJECT_SOCKET))
		return (EINVAL);

	error = FUNC5(mac);
	if (error)
		return (error);

	elements = FUNC10(mac->m_buflen, M_MACTEMP, M_WAITOK);
	error = FUNC2(mac->m_string, elements, mac->m_buflen, NULL);
	if (error) {
		FUNC4(elements, M_MACTEMP);
		return (error);
	}

	buffer = FUNC10(mac->m_buflen, M_MACTEMP, M_WAITOK | M_ZERO);
	intlabel = FUNC8(M_WAITOK);
	FUNC0(so);
	FUNC6(so->so_label, intlabel);
	FUNC1(so);
	error = FUNC7(intlabel, elements, buffer,
	    mac->m_buflen);
	FUNC9(intlabel);
	if (error == 0)
		error = FUNC3(buffer, mac->m_string, FUNC11(buffer)+1);

	FUNC4(buffer, M_MACTEMP);
	FUNC4(elements, M_MACTEMP);

	return (error);
}