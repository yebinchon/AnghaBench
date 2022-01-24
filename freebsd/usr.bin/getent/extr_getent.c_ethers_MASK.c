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
struct ether_addr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETHERSPRINT ; 
 int /*<<< orphan*/  MAXHOSTNAMELEN ; 
 int RV_NOENUM ; 
 int RV_NOTFOUND ; 
 int RV_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct ether_addr* FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,struct ether_addr*) ; 
 scalar_t__ FUNC3 (char*,struct ether_addr*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC5(int argc, char *argv[])
{
	char		hostname[MAXHOSTNAMELEN + 1], *hp;
	struct ether_addr ea, *eap;
	int		i, rv;

	FUNC0(argc > 1);
	FUNC0(argv != NULL);

#define ETHERSPRINT	printf("%-17s  %s\n", ether_ntoa(eap), hp)

	rv = RV_OK;
	if (argc == 2) {
		FUNC4(stderr, "Enumeration not supported on ethers\n");
		rv = RV_NOENUM;
	} else {
		for (i = 2; i < argc; i++) {
			if ((eap = FUNC1(argv[i])) == NULL) {
				eap = &ea;
				hp = argv[i];
				if (FUNC2(hp, eap) != 0) {
					rv = RV_NOTFOUND;
					break;
				}
			} else {
				hp = hostname;
				if (FUNC3(hp, eap) != 0) {
					rv = RV_NOTFOUND;
					break;
				}
			}
			ETHERSPRINT;
		}
	}
	return rv;
}