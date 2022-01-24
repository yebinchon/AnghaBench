#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  IOCStatus; } ;
struct TYPE_11__ {int /*<<< orphan*/  Function; } ;
typedef  TYPE_1__ MPI2_IOC_FACTS_REQUEST ;
typedef  TYPE_2__ MPI2_IOC_FACTS_REPLY ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MPI2_FUNCTION_IOC_FACTS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_2__* FUNC3 (int) ; 
 int FUNC4 (int,TYPE_1__*,int,TYPE_2__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int,TYPE_1__*,int,TYPE_2__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

MPI2_IOC_FACTS_REPLY *
FUNC6(int fd)
{
	MPI2_IOC_FACTS_REPLY *facts;
	MPI2_IOC_FACTS_REQUEST req;
	int error;

	facts = FUNC3(sizeof(MPI2_IOC_FACTS_REPLY));
	if (facts == NULL) {
		errno = ENOMEM;
		return (NULL);
	}

	FUNC1(&req, sizeof(MPI2_IOC_FACTS_REQUEST));
	req.Function = MPI2_FUNCTION_IOC_FACTS;

#if 1
	error = FUNC4(fd, &req, sizeof(MPI2_IOC_FACTS_REQUEST),
	    facts, sizeof(MPI2_IOC_FACTS_REPLY), NULL, 0, NULL, 0, 10);
#else
	error = mps_user_command(fd, &req, sizeof(MPI2_IOC_FACTS_REQUEST),
	    facts, sizeof(MPI2_IOC_FACTS_REPLY), NULL, 0, 0);
#endif
	if (error) {
		FUNC2(facts);
		return (NULL);
	}

	if (!FUNC0(facts->IOCStatus)) {
		FUNC2(facts);
		errno = EINVAL;
		return (NULL);
	}
	return (facts);
}