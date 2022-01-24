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
typedef  int /*<<< orphan*/  domainname ;
typedef  int /*<<< orphan*/  bool_t ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,struct svc_req*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

bool_t *
FUNC2(domainname *argp, struct svc_req *rqstp)
{
	static bool_t  result;

#ifdef DB_CACHE
	if (yp_access(NULL, NULL, (struct svc_req *)rqstp))
#else
	if (FUNC0(NULL, (struct svc_req *)rqstp))
#endif
		return (NULL);

	if (argp == NULL || FUNC1(*argp))
		return (NULL);
	else
		result = TRUE;

	return (&result);
}