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
typedef  char* uintmax_t ;
typedef  scalar_t__ UINT64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC4 (char*,char**,int) ; 

__attribute__((used)) static UINT64
FUNC5(char *msg, UINT64 def_val)
{
	char		buf[16], *ep;
	UINT64		val;

	val = def_val;
	FUNC2("DEBUG");
	if (msg != NULL) {
		FUNC2("%s", msg);
	}
	FUNC2("(default: 0x%jx ", (uintmax_t)val);
	FUNC2(" / %ju) >>", (uintmax_t)val);
	FUNC1(stdout);

	FUNC0(buf, sizeof buf);
	while (1) {
		if (FUNC3(0, buf, sizeof buf) == 0) {
			continue;
		}
		if (buf[0] == '\n') {
			break;	/* use default value */
		}
		if (buf[0] == '0' && buf[1] == 'x') {
			val = FUNC4(buf, &ep, 16);
		} else {
			val = FUNC4(buf, &ep, 10);
		}
		break;
	}
	return (val);
}