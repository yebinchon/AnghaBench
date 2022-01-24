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
struct nv {int dummy; } ;

/* Variables and functions */
 int HASTCTL_CMD_SETROLE ; 
 int SNMP_ERR_NOERROR ; 
 int FUNC0 (struct nv*,struct nv**) ; 
 int /*<<< orphan*/  FUNC1 (struct nv*,char const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nv*,int,char*) ; 
 struct nv* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct nv*) ; 

__attribute__((used)) static int
FUNC5(const char *resource, int role)
{
	struct nv *nvin, *nvout;
	int error;

	nvin = FUNC3();
	FUNC1(nvin, resource, "resource%d", 0);
	FUNC2(nvin, HASTCTL_CMD_SETROLE, "cmd");
	FUNC2(nvin, role, "role");
	error = FUNC0(nvin, &nvout);
	FUNC4(nvin);
	if (error != 0)
		return (-1);
	FUNC4(nvout);
	return (SNMP_ERR_NOERROR);
}