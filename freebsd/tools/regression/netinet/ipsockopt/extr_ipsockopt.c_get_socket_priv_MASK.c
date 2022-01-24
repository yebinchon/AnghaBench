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
typedef  int /*<<< orphan*/  uid_t ;

/* Variables and functions */
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(int type)
{
	uid_t olduid;
	int sock;

	if (FUNC3() != 0)
		FUNC1(-1, "get_sock_priv: running without real uid 0");
	
	olduid = FUNC2();
	if (FUNC4(0) < 0)
		FUNC0(-1, "get_sock_priv: seteuid(0)");

	sock = FUNC5(PF_INET, type, 0);

	if (FUNC4(olduid) < 0)
		FUNC0(-1, "get_sock_priv: seteuid(%d)", olduid);

	return (sock);
}