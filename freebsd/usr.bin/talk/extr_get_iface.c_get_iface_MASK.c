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
struct in_addr {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int sin_len; struct in_addr sin_addr; void* sin_port; void* sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;

/* Variables and functions */
 void* AF_INET ; 
 scalar_t__ EADDRINUSE ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int FUNC0 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,struct sockaddr*,int) ; 
 scalar_t__ errno ; 
 int FUNC3 (int,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct in_addr*,struct in_addr*,int) ; 
 int FUNC7 (void*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC9(struct in_addr *dst, struct in_addr *iface)
{
	static struct sockaddr_in local;
	struct sockaddr_in remote;
	socklen_t namelen;
	int s, rv;

	FUNC6(&remote.sin_addr, dst, sizeof remote.sin_addr);
	remote.sin_port = FUNC5(60000);
	remote.sin_family = AF_INET;
	remote.sin_len = sizeof remote;

	local.sin_addr.s_addr = FUNC4(INADDR_ANY);
	local.sin_port = FUNC5(60000);
	local.sin_family = AF_INET;
	local.sin_len = sizeof local;

	s = FUNC8(PF_INET, SOCK_DGRAM, 0);
	if (s < 0)
		return -1;

	do {
		rv = FUNC0(s, (struct sockaddr *)&local, sizeof local);
		local.sin_port = FUNC5(FUNC7(local.sin_port) + 1);
	} while(rv < 0 && errno == EADDRINUSE);

	if (rv < 0) {
		FUNC1(s);
		return -1;
	}

	do {
		rv = FUNC2(s, (struct sockaddr *)&remote, sizeof remote);
		remote.sin_port = FUNC5(FUNC7(remote.sin_port) + 1);
	} while(rv < 0 && errno == EADDRINUSE);

	if (rv < 0) {
		FUNC1(s);
		return -1;
	}

	namelen = sizeof local;
	rv = FUNC3(s, (struct sockaddr *)&local, &namelen);
	FUNC1(s);
	if (rv < 0)
		return -1;

	FUNC6(iface, &local.sin_addr, sizeof local.sin_addr);
	return 0;
}