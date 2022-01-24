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
struct sockaddr_in {int /*<<< orphan*/  sin_addr; } ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(const char *context, struct sockaddr_in *sin)
{
	int sock;

	sock = FUNC4(PF_INET, SOCK_DGRAM, 0);
	if (sock == -1)
		FUNC2(-1, "%s: socket(PF_INET, SOCK_DGRAM, 0): %s", context,
		    FUNC5(errno));

	if (FUNC1(sock, (struct sockaddr *)sin, sizeof(*sin)) < 0)
		FUNC2(-1, "%s: connect(%s): %s", context,
		    FUNC3(sin->sin_addr), FUNC5(errno));

	if (FUNC0(sock) < 0)
		FUNC2(-1, "%s: close(): %s", context, FUNC5(errno));
}