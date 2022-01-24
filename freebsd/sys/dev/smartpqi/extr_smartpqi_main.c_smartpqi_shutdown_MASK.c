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
struct pqisrc_softstate {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  PQISRC_SHUTDOWN ; 
 int PQI_STATUS_SUCCESS ; 
 int FUNC2 (struct pqisrc_softstate*,int /*<<< orphan*/ ) ; 

int
FUNC3(void *arg)
{
	struct pqisrc_softstate *softs = NULL;
	int rval = 0;

	FUNC1("IN\n");

	softs = (struct pqisrc_softstate *)arg;

	rval = FUNC2(softs, PQISRC_SHUTDOWN);
	if (rval != PQI_STATUS_SUCCESS) {
		FUNC0("Unable to flush adapter cache! rval = %d", rval);
	}

	FUNC1("OUT\n");
		
	return rval;
}