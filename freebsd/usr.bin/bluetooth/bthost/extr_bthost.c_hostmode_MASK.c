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
struct hostent {char* h_name; scalar_t__ h_addr; } ;
typedef  int /*<<< orphan*/  bdaddr_t ;
typedef  int /*<<< orphan*/  ba ;

/* Variables and functions */
 int /*<<< orphan*/  AF_BLUETOOTH ; 
 int FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 struct hostent* FUNC1 (char const*,int,int /*<<< orphan*/ ) ; 
 struct hostent* FUNC2 (char const*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,...) ; 

__attribute__((used)) static int
FUNC6(char const *arg, int brief)
{
	struct hostent	*he = NULL;
	bdaddr_t	 ba;
	char		 bastr[32];
	int		 reverse;

	if (FUNC0(arg, &ba) == 1) {
		reverse = 1;
		he = FUNC1((char const *) &ba, sizeof(ba), 
					AF_BLUETOOTH);
	} else {
		reverse = 0;
		he = FUNC2(arg);
	}

	if (he == NULL) {
		FUNC4(reverse? FUNC3(&ba, bastr) : arg);
		return (1);
	}

	if (brief)
		FUNC5("%s", reverse? he->h_name :
				FUNC3((bdaddr_t *)(he->h_addr), bastr));
	else
		FUNC5("Host %s has %s %s\n", 
			reverse? FUNC3(&ba, bastr) : arg,
			reverse? "name" : "address",
			reverse? he->h_name :
				FUNC3((bdaddr_t *)(he->h_addr), bastr));

	return (0);
}