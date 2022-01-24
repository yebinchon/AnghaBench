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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 void* host ; 
 void* password ; 
 void* path ; 
 void* protocol ; 
 int /*<<< orphan*/  stdin ; 
 char* FUNC2 (char*,char) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int FUNC4 (char*) ; 
 void* FUNC5 (char*) ; 
 void* wusername ; 

__attribute__((used)) static void FUNC6(void)
{
	char buf[1024];

	while (FUNC1(buf, sizeof(buf), stdin)) {
		char *v;
		int len = FUNC4(buf);
		/* strip trailing CR / LF */
		while (len && FUNC2("\r\n", buf[len - 1]))
			buf[--len] = 0;

		if (!*buf)
			break;

		v = FUNC2(buf, '=');
		if (!v)
			FUNC0("bad input: %s", buf);
		*v++ = '\0';

		if (!FUNC3(buf, "protocol"))
			protocol = FUNC5(v);
		else if (!FUNC3(buf, "host"))
			host = FUNC5(v);
		else if (!FUNC3(buf, "path"))
			path = FUNC5(v);
		else if (!FUNC3(buf, "username")) {
			wusername = FUNC5(v);
		} else if (!FUNC3(buf, "password"))
			password = FUNC5(v);
		else
			FUNC0("unrecognized input");
	}
}