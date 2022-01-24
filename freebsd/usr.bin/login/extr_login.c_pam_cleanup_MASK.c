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

/* Variables and functions */
 int PAM_DELETE_CRED ; 
 scalar_t__ PAM_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ pam_cred_established ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ pam_err ; 
 scalar_t__ pam_session_established ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int pam_silent ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * pamh ; 

__attribute__((used)) static void
FUNC4(void)
{

	if (pamh != NULL) {
		if (pam_session_established) {
			pam_err = FUNC0(pamh, 0);
			if (pam_err != PAM_SUCCESS)
				FUNC3("pam_close_session()");
		}
		pam_session_established = 0;
		if (pam_cred_established) {
			pam_err = FUNC2(pamh, pam_silent|PAM_DELETE_CRED);
			if (pam_err != PAM_SUCCESS)
				FUNC3("pam_setcred()");
		}
		pam_cred_established = 0;
		FUNC1(pamh, pam_err);
		pamh = NULL;
	}
}