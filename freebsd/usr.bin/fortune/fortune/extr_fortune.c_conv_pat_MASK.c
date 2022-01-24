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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (unsigned char) ; 
 scalar_t__ FUNC3 (unsigned char) ; 
 scalar_t__ FUNC4 (unsigned char) ; 
 char* FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC6 (unsigned char) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char) ; 

__attribute__((used)) static char *
FUNC8(char *orig)
{
	char		*sp;
	unsigned int	cnt;
	char		*new;

	cnt = 1;	/* allow for '\0' */
	for (sp = orig; *sp != '\0'; sp++)
		if (FUNC2((unsigned char)*sp))
			cnt += 4;
		else
			cnt++;
	if ((new = FUNC5(cnt)) == NULL) {
		FUNC1(stderr, "pattern too long for ignoring case\n");
		FUNC0(1);
	}

	for (sp = new; *orig != '\0'; orig++) {
		if (FUNC3((unsigned char)*orig)) {
			*sp++ = '[';
			*sp++ = *orig;
			*sp++ = FUNC7((unsigned char)*orig);
			*sp++ = ']';
		}
		else if (FUNC4((unsigned char)*orig)) {
			*sp++ = '[';
			*sp++ = *orig;
			*sp++ = FUNC6((unsigned char)*orig);
			*sp++ = ']';
		}
		else
			*sp++ = *orig;
	}
	*sp = '\0';

	return (new);
}