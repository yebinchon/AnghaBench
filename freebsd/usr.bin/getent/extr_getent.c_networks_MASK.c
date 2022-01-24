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
struct netent {int dummy; } ;
typedef  scalar_t__ in_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 scalar_t__ INADDR_NONE ; 
 int RV_NOTFOUND ; 
 int RV_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct netent* FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct netent* FUNC3 (char*) ; 
 struct netent* FUNC4 () ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct netent*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int
FUNC8(int argc, char *argv[])
{
	struct netent	*ne;
	in_addr_t	net;
	int		i, rv;

	FUNC0(argc > 1);
	FUNC0(argv != NULL);

	FUNC7(1);
	rv = RV_OK;
	if (argc == 2) {
		while ((ne = FUNC4()) != NULL)
			FUNC6(ne);
	} else {
		for (i = 2; i < argc; i++) {
			net = FUNC5(argv[i]);
			if (net != INADDR_NONE)
				ne = FUNC2(net, AF_INET);
			else
				ne = FUNC3(argv[i]);
			if (ne != NULL)
				FUNC6(ne);
			else {
				rv = RV_NOTFOUND;
				break;
			}
		}
	}
	FUNC1();
	return rv;
}