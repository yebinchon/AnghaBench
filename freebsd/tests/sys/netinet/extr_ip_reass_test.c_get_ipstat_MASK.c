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
struct ipstat {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (struct ipstat*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,struct ipstat*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct ipstat *stat)
{
	size_t len;
	int error;

	FUNC2(stat, 0, sizeof(*stat));
	len = sizeof(*stat);
	error = FUNC4("net.inet.ip.stats", stat, &len, NULL, 0);
	FUNC1(error == 0, "sysctl(net.inet.ip.stats) failed: %s",
	    FUNC3(errno));
	FUNC0(len == sizeof(*stat));
}