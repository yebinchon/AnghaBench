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
struct servent {int /*<<< orphan*/  s_port; } ;
struct in_addr {scalar_t__ s_addr; } ;
struct hostent {scalar_t__ h_addr; } ;

/* Variables and functions */
 scalar_t__ INADDR_NONE ; 
 scalar_t__ TCP ; 
 scalar_t__ UDP ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct hostent* FUNC2 (char*) ; 
 struct servent* FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char) ; 
 scalar_t__ protos ; 
 int /*<<< orphan*/  FUNC6 (struct in_addr*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 char* FUNC8 (char*,char) ; 
 char* FUNC9 (char const*) ; 

__attribute__((used)) static void
FUNC10(const char *args, int onoff)
{
	char *cp, *tmpstr, *tmpstr1;
	struct servent *sp;
	struct hostent *hp;
	struct in_addr in;

	tmpstr = tmpstr1 = FUNC9(args);
	cp = FUNC8(tmpstr1, '\n');
	if (cp)
		*cp = '\0';
	for (;;tmpstr1 = cp) {
		for (cp = tmpstr1; *cp && FUNC5(*cp); cp++)
			;
		tmpstr1 = cp;
		for (; *cp && !FUNC5(*cp); cp++)
			;
		if (*cp)
			*cp++ = '\0';
		if (cp - tmpstr1 == 0)
			break;
		sp = FUNC3(tmpstr1,
		    protos == TCP ? "tcp" : protos == UDP ? "udp" : 0);
		if (sp) {
			FUNC7(sp->s_port, onoff);
			continue;
		}
		hp = FUNC2(tmpstr1);
		if (hp == NULL) {
			in.s_addr = FUNC4(tmpstr1);
			if (in.s_addr == INADDR_NONE) {
				FUNC0("%s: unknown host or port", tmpstr1);
				continue;
			}
		} else
			in = *(struct in_addr *)hp->h_addr;
		FUNC6(&in, onoff);
	}
	FUNC1(tmpstr);
}