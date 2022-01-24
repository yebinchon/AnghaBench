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
typedef  int /*<<< orphan*/  one ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_REUSEPORT_LB ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*,int) ; 
 int FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(int domain, int flags)
{
	size_t one;
	int error, sd;

	sd = FUNC2(domain, SOCK_STREAM | flags, 0);
	FUNC0(sd >= 0, "socket() failed: %s", FUNC3(errno));

	one = 1;
	error = FUNC1(sd, SOL_SOCKET, SO_REUSEPORT_LB, &one, sizeof(one));
	FUNC0(error == 0, "setsockopt(SO_REUSEPORT_LB) failed: %s",
	    FUNC3(errno));

	return (sd);
}