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
 int FUNC0 (int,char*,int) ; 
 int FUNC1 (char*,char*,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int,char*,int) ; 

int
FUNC5(int so)
{
    char            buf[8];
    int             rv;
    int             nslot;

    if ((rv = FUNC4(so, "S", 1)) < 1) {
	FUNC2("write");
	goto err;
    } else if (rv != 1) {
	FUNC3(0, "write: fail.");
	goto err;
    }

    if ((rv = FUNC0(so, buf, sizeof buf)) < 0) {
	FUNC2("read");
	goto err;
    }
    buf[sizeof buf - 1] = 0;
    if (FUNC1(buf, "%d", &nslot) != 1) {
	FUNC3(0, "Invalid response.");
	goto err;
    }
    return nslot;
  err:
    return -1;
}