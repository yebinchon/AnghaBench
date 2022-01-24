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
typedef  int /*<<< orphan*/  u_long ;
struct rpcent {int /*<<< orphan*/  r_number; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char*) ; 
 struct rpcent* FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char**,int) ; 

__attribute__((used)) static u_long
FUNC5 (char *arg)
{
	char *strptr;
	register struct rpcent *rpc;
	register u_long prognum;
	char *tptr = arg;

	while (*tptr && FUNC3(*tptr++));
	if (*tptr || FUNC2(*(tptr - 1))) {
		rpc = FUNC1(arg);
		if (rpc == NULL)
			FUNC0(1, "%s is unknown service", arg);
		prognum = rpc->r_number;
	} else {
		prognum = FUNC4(arg, &strptr, 10);
		if (strptr == arg || *strptr != '\0')
			FUNC0(1, "%s is illegal program number", arg);
	}
	return (prognum);
}