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
 int KENV_MNAMELEN ; 
 int KENV_MVALLEN ; 
 int KENV_SIZE ; 
 int /*<<< orphan*/  M_KENV ; 
 int /*<<< orphan*/  M_WAITOK ; 
 char* FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t) ; 
 int /*<<< orphan*/ * kenvp ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 char* FUNC5 (char*,char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (char*) ; 

__attribute__((used)) static void
FUNC8(char *init_env, int *curpos)
{
	char *cp, *cpnext, *eqpos, *found;
	size_t len;
	int i;

	if (init_env && *init_env != '\0') {
		found = NULL;
		i = *curpos;
		for (cp = init_env; cp != NULL; cp = cpnext) {
			cpnext = FUNC2(cp);
			len = FUNC7(cp) + 1;
			if (len > KENV_MNAMELEN + 1 + KENV_MVALLEN + 1) {
				FUNC4(
				"WARNING: too long kenv string, ignoring %s\n",
				    cp);
				goto sanitize;
			}
			eqpos = FUNC5(cp, '=');
			if (eqpos == NULL) {
				FUNC4(
				"WARNING: malformed static env value, ignoring %s\n",
				    cp);
				goto sanitize;
			}
			*eqpos = 0;
			/*
			 * De-dupe the environment as we go.  We don't add the
			 * duplicated assignments because config(8) will flip
			 * the order of the static environment around to make
			 * kernel processing match the order of specification
			 * in the kernel config.
			 */
			found = FUNC0(cp, NULL);
			*eqpos = '=';
			if (found != NULL)
				goto sanitize;
			if (i > KENV_SIZE) {
				FUNC4(
				"WARNING: too many kenv strings, ignoring %s\n",
				    cp);
				goto sanitize;
			}

			kenvp[i] = FUNC3(len, M_KENV, M_WAITOK);
			FUNC6(kenvp[i++], cp);
sanitize:
			FUNC1(cp, len - 1);
		}
		*curpos = i;
	}
}