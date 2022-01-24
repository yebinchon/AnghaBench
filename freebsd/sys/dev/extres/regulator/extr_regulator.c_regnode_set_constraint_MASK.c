#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int boot_on; int always_on; int min_uvolt; int max_uvolt; } ;
struct regnode {TYPE_1__ std_param; } ;

/* Variables and functions */
 int ERANGE ; 
 int REGULATOR_STATUS_ENABLED ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 
 int FUNC1 (struct regnode*) ; 
 char* FUNC2 (struct regnode*) ; 
 int FUNC3 (struct regnode*,int*) ; 
 int FUNC4 (struct regnode*,int*) ; 

int
FUNC5(struct regnode *regnode)
{
	int status, rv, uvolt;

	if (regnode->std_param.boot_on != true &&
	    regnode->std_param.always_on != true)
		return (0);

	rv = FUNC4(regnode, &status);
	if (rv != 0) {
		if (bootverbose)
			FUNC0("Cannot get regulator status for %s\n",
			    FUNC2(regnode));
		return (rv);
	}

	if (status == REGULATOR_STATUS_ENABLED)
		return (0);

	rv = FUNC3(regnode, &uvolt);
	if (rv != 0) {
		if (bootverbose)
			FUNC0("Cannot get regulator voltage for %s\n",
			    FUNC2(regnode));
		return (rv);
	}

	if (uvolt < regnode->std_param.min_uvolt ||
	  uvolt > regnode->std_param.max_uvolt) {
		if (bootverbose)
			FUNC0("Regulator %s current voltage %d is not in the"
			    " acceptable range : %d<->%d\n",
			    FUNC2(regnode),
			    uvolt, regnode->std_param.min_uvolt,
			    regnode->std_param.max_uvolt);
		return (ERANGE);
	}

	rv = FUNC1(regnode);
	if (rv != 0) {
		if (bootverbose)
			FUNC0("Cannot enable regulator %s\n",
			    FUNC2(regnode));
		return (rv);
	}

	return (0);
}