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
struct svc_req {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,struct svc_req*,...) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void *
FUNC3(void *argp, struct svc_req *rqstp)
{
	static char * result;
	static char rval = 0;

#ifdef DB_CACHE
	if (yp_access(NULL, NULL, (struct svc_req *)rqstp))
#else
	if (FUNC1(NULL, (struct svc_req *)rqstp))
#endif
		return (NULL);
#ifdef DB_CACHE
	/* clear out the database cache */
	yp_flush_all();
#endif
	/* Re-read the securenets database for the hell of it. */
	FUNC0();

	result = &rval;
	return((void *) &result);
}