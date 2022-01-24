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
struct netconfig {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char*,...) ; 
 struct netconfig* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct netconfig*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void
FUNC6(char *netid, int argc, char **argv)
{
	struct netconfig *nconf = NULL;

	if (argc != 2)
		FUNC5();
	if (netid) {
		nconf = FUNC1(netid);
		if (nconf == NULL)
			FUNC0(1, "netid %s not supported", netid);
	}
	if ((FUNC4(FUNC2(argv[0]), FUNC3(argv[1]), nconf)) == 0)
		FUNC0(1,
	"could not delete registration for prog %s version %s",
			argv[0], argv[1]);
}