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
struct hostent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 int IN6ADDRSZ ; 
 int INADDRSZ ; 
 int RV_NOTFOUND ; 
 int RV_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct hostent* FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 struct hostent* FUNC3 (char*) ; 
 struct hostent* FUNC4 (char*,int /*<<< orphan*/ ) ; 
 struct hostent* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct hostent*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*,void*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int
FUNC9(int argc, char *argv[])
{
	struct hostent	*he4, *he6;
	char		addr[IN6ADDRSZ];
	int		i, rv;

	FUNC0(argc > 1);
	FUNC0(argv != NULL);

	FUNC8(1);
	he4 = he6 = NULL;
	rv = RV_OK;
	if (argc == 2) {
		while ((he4 = FUNC5()) != NULL)
			FUNC6(he4);
	} else {
		for (i = 2; i < argc; i++) {
			if (FUNC7(AF_INET6, argv[i], (void *)addr) > 0) {
				he6 = FUNC2(addr, IN6ADDRSZ, AF_INET6);
				if (he6 != NULL)
					FUNC6(he6);
			} else if (FUNC7(AF_INET, argv[i],
			    (void *)addr) > 0) {
				he4 = FUNC2(addr, INADDRSZ, AF_INET);
				if (he4 != NULL)
					FUNC6(he4);
	       		} else {
				he6 = FUNC4(argv[i], AF_INET6);
				if (he6 != NULL)
					FUNC6(he6);
				he4 = FUNC3(argv[i]);
				if (he4 != NULL)
					FUNC6(he4);
			}
			if ( he4 == NULL && he6 == NULL ) {
				rv = RV_NOTFOUND;
				break;
			}
		}
	}
	FUNC1();
	return rv;
}