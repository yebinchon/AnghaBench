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
struct TYPE_2__ {int* uid; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT_standout ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_1__ ps ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 scalar_t__ FUNC4 (char*,size_t,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (char*) ; 

__attribute__((used)) static int
FUNC8(char *buf, size_t buflen)
{
    int rc = 0;
    int uid = -1;
    char *buf2 = buf;

    FUNC2(MT_standout, "Username to show (+ for all): ");
    if (FUNC4(buf, buflen, false) <= 0)
    {
	FUNC1();
	return (rc);
    }

    if (buf[0] == '+' || buf[0] == '-')
    {
	if (buf[1] == '\0')
	{
	    FUNC6();
	    goto end;
	}
	else
	    ++buf2;
    }

    if ((uid = FUNC7(buf2)) == -1)
    {
	FUNC2(MT_standout, " %s: unknown user", buf2);
	rc = 1;
	goto end;
    }

    if (buf2 == buf)
    {
	FUNC6();
	ps.uid[0] = uid;
	goto end;
    }

    if (buf[0] == '+')
    {
	if (FUNC0(uid))
	{
	    FUNC2(MT_standout, " too many users, reset with '+'");
	    rc = 1;
	    goto end;
	}
    }
    else
	FUNC5(uid);

end:
    FUNC3('\r');
    return (rc);
}