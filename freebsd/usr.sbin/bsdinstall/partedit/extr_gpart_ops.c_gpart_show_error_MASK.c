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
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char const*,char*,...) ; 
 char* FUNC2 (int) ; 
 int FUNC3 (char const*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(const char *title, const char *explanation, const char *errstr)
{
	char *errmsg;
	char message[512];
	int error;

	if (explanation == NULL)
		explanation = "";

	error = FUNC3(errstr, &errmsg, 0);
	if (errmsg != errstr) {
		while (errmsg[0] == ' ')
			errmsg++;
		if (errmsg[0] != '\0')
			FUNC1(message, "%s%s. %s", explanation,
			    FUNC2(error), errmsg);
		else
			FUNC1(message, "%s%s", explanation, FUNC2(error));
	} else {
		FUNC1(message, "%s%s", explanation, errmsg);
	}

	FUNC0(title, message, 0, 0, TRUE);
}