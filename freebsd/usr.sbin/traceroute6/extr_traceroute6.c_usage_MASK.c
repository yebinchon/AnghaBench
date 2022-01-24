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

void
FUNC2(void)
{

	FUNC1(stderr,
"usage: traceroute6 [-adIlnNrSTUv] [-A as_server] [-f firsthop] [-g gateway]\n"
"       [-m hoplimit] [-p port] [-q probes] [-s src] [-w waittime] target\n"
"       [datalen]\n");
	FUNC0(1);
}