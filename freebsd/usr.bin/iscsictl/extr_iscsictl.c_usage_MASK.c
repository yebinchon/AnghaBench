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
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC2(void)
{

	FUNC1(stderr, "usage: iscsictl -A -p portal -t target "
	    "[-u user -s secret] [-w timeout] [-e on | off]\n");
	FUNC1(stderr, "       iscsictl -A -d discovery-host "
	    "[-u user -s secret] [-e on | off]\n");
	FUNC1(stderr, "       iscsictl -A -a [-c path]\n");
	FUNC1(stderr, "       iscsictl -A -n nickname [-c path]\n");
	FUNC1(stderr, "       iscsictl -M -i session-id [-p portal] "
	    "[-t target] [-u user] [-s secret] [-e on | off]\n");
	FUNC1(stderr, "       iscsictl -M -i session-id -n nickname "
	    "[-c path]\n");
	FUNC1(stderr, "       iscsictl -R [-p portal] [-t target]\n");
	FUNC1(stderr, "       iscsictl -R -a\n");
	FUNC1(stderr, "       iscsictl -R -n nickname [-c path]\n");
	FUNC1(stderr, "       iscsictl -L [-v] [-w timeout]\n");
	FUNC0(1);
}