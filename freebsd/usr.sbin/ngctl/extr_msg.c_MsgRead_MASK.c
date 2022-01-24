#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_2__ {scalar_t__ arglen; int flags; int cmd; char* cmdstr; } ;
struct ng_mesg {char* data; TYPE_1__ header; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,scalar_t__) ; 
 int NGF_RESP ; 
 int /*<<< orphan*/  NGM_BINARY2ASCII ; 
 int /*<<< orphan*/  NGM_GENERIC_COOKIE ; 
 int NG_PATHSIZ ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct ng_mesg**,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ng_mesg*,scalar_t__) ; 
 int /*<<< orphan*/  csock ; 
 int /*<<< orphan*/  FUNC3 (struct ng_mesg*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

void
FUNC6(void)
{
	struct ng_mesg *m, *m2;
	struct ng_mesg *ascii;
	char path[NG_PATHSIZ];

	/* Get incoming message (in binary form) */
	if (FUNC1(csock, &m, path) < 0) {
		FUNC5("recv incoming message");
		return;
	}

	/* Ask originating node to convert message to ASCII */
	if (FUNC2(csock, path, NGM_GENERIC_COOKIE,
	      NGM_BINARY2ASCII, m, sizeof(*m) + m->header.arglen) < 0
	    || FUNC1(csock, &m2, NULL) < 0) {
		FUNC4("Rec'd %s %d from \"%s\":\n",
		    (m->header.flags & NGF_RESP) != 0 ? "response" : "command",
		    m->header.cmd, path);
		if (m->header.arglen == 0)
			FUNC4("No arguments\n");
		else
			FUNC0((const u_char *)m->data, m->header.arglen);
		FUNC3(m);
		return;
	}

	/* Display message in ASCII form */
	FUNC3(m);
	ascii = (struct ng_mesg *)m2->data;
	FUNC4("Rec'd %s \"%s\" (%d) from \"%s\":\n",
	    (ascii->header.flags & NGF_RESP) != 0 ? "response" : "command",
	    ascii->header.cmdstr, ascii->header.cmd, path);
	if (*ascii->data != '\0')
		FUNC4("Args:\t%s\n", ascii->data);
	else
		FUNC4("No arguments\n");
	FUNC3(m2);
}