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
struct passwd {int dummy; } ;

/* Variables and functions */
 int FUNC0 (char const*,struct passwd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (struct passwd*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 struct passwd* FUNC5 (struct passwd*) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 struct passwd* FUNC7 (char const*,struct passwd*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

struct passwd *
FUNC9(const char *tfn, struct passwd *pw)
{
	struct passwd *npw;
	char *line;
	size_t len;

	if (FUNC0(tfn, pw) == -1)
		return (NULL);
	for (;;) {
		switch (FUNC6(1)) {
		case -1:
			return (NULL);
		case 0:
			return (FUNC5(pw));
		default:
			break;
		}
		if ((npw = FUNC7(tfn, pw)) != NULL)
			return (npw);
		FUNC3(npw);
		FUNC4("re-edit the password file? ");
		FUNC1(stdout);
		if ((line = FUNC2(stdin, &len)) == NULL) {
			FUNC8("fgetln()");
			return (NULL);
		}
		if (len > 0 && (*line == 'N' || *line == 'n'))
			return (NULL);
	}
}