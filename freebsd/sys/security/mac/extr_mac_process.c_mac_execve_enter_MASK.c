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
struct mac {int /*<<< orphan*/  m_buflen; int /*<<< orphan*/  m_string; } ;
struct label {int dummy; } ;
struct image_params {struct label* execlabel; } ;
typedef  int /*<<< orphan*/  mac ;

/* Variables and functions */
 int EINVAL ; 
 int MPC_OBJECT_CRED ; 
 int /*<<< orphan*/  M_MACTEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int FUNC0 (struct mac*,struct mac*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mac*) ; 
 int FUNC4 (struct label*,char*) ; 
 struct label* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct label*) ; 
 int mac_labeled ; 
 char* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC8(struct image_params *imgp, struct mac *mac_p)
{
	struct label *label;
	struct mac mac;
	char *buffer;
	int error;

	if (mac_p == NULL)
		return (0);

	if (!(mac_labeled & MPC_OBJECT_CRED))
		return (EINVAL);

	error = FUNC0(mac_p, &mac, sizeof(mac));
	if (error)
		return (error);

	error = FUNC3(&mac);
	if (error)
		return (error);

	buffer = FUNC7(mac.m_buflen, M_MACTEMP, M_WAITOK);
	error = FUNC1(mac.m_string, buffer, mac.m_buflen, NULL);
	if (error) {
		FUNC2(buffer, M_MACTEMP);
		return (error);
	}

	label = FUNC5();
	error = FUNC4(label, buffer);
	FUNC2(buffer, M_MACTEMP);
	if (error) {
		FUNC6(label);
		return (error);
	}
	imgp->execlabel = label;
	return (0);
}