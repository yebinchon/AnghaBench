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
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ Wflag ; 
 char* FUNC0 (struct sockaddr*,struct sockaddr*,int) ; 
 scalar_t__ numeric_addr ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,...) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static int
FUNC4(const char *name, struct sockaddr *sa, struct sockaddr *mask,
    int flags, int width)
{
	const char *cp;
	char buf[128];
	int protrusion;

	cp = FUNC0(sa, mask, flags);

	if (width < 0) {
		FUNC1(buf, sizeof(buf), "{:%s/%%s} ", name);
		FUNC3(buf, cp);
		protrusion = 0;
	} else {
		if (Wflag != 0 || numeric_addr) {
			FUNC1(buf, sizeof(buf), "{[:%d}{:%s/%%s}{]:} ",
			    -width, name);
			FUNC3(buf, cp);
			protrusion = FUNC2(cp) - width;
			if (protrusion < 0)
				protrusion = 0;
		} else {
			FUNC1(buf, sizeof(buf), "{[:%d}{:%s/%%-.*s}{]:} ",
			    -width, name);
			FUNC3(buf, width, cp);
			protrusion = 0;
		}
	}
	return (protrusion);
}