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
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {scalar_t__ sin_family; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_port; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,struct sockaddr*,int) ; 
 int FUNC2 (int,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr_in*,struct sockaddr_in const*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sockaddr_in*,int /*<<< orphan*/ ) ; 
 int FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

const char *
FUNC7(register const struct sockaddr_in *to,
    register struct sockaddr_in *from)
{
	const char *errstr;
	struct sockaddr_in cto, cfrom;
	int s;
	socklen_t len;

	s = FUNC6(AF_INET, SOCK_DGRAM, 0);
	if (s == -1)
		return ("failed to open DGRAM socket for src addr selection.");

	errstr = NULL;
	len = sizeof(struct sockaddr_in);
	FUNC4(&cto, to, len);
	cto.sin_port = FUNC3(65535);	/* Dummy port for connect(2). */
	if (FUNC1(s, (struct sockaddr *)&cto, len) == -1) {
		errstr = "failed to connect to peer for src addr selection.";
		goto err;
	}

	if (FUNC2(s, (struct sockaddr *)&cfrom, &len) == -1) {
		errstr = "failed to get socket name for src addr selection.";
		goto err;
	}

	if (len != sizeof(struct sockaddr_in) || cfrom.sin_family != AF_INET) {
		errstr = "unexpected address family in src addr selection.";
		goto err;
	}

	/* Update source address for traceroute. */
	FUNC5(from, cfrom.sin_addr.s_addr);

err:
	(void) FUNC0(s);

	/* No error (string) to return. */
	return (errstr);
}