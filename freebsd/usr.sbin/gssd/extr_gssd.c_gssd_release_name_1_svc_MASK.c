#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct svc_req {int dummy; } ;
struct TYPE_5__ {scalar_t__ minor_status; scalar_t__ major_status; } ;
typedef  TYPE_1__ release_name_res ;
struct TYPE_6__ {int /*<<< orphan*/  input_name; } ;
typedef  TYPE_2__ release_name_args ;
typedef  scalar_t__ gss_name_t ;
typedef  int /*<<< orphan*/  bool_t ;

/* Variables and functions */
 scalar_t__ GSS_S_COMPLETE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int,int) ; 

bool_t
FUNC4(release_name_args *argp, release_name_res *result, struct svc_req *rqstp)
{
	gss_name_t name = FUNC2(argp->input_name);

	if (name) {
		result->major_status = FUNC0(&result->minor_status,
		    &name);
		FUNC1(argp->input_name);
	} else {
		result->major_status = GSS_S_COMPLETE;
		result->minor_status = 0;
	}
	FUNC3("gssd_release_name: done major=0x%x minor=%d\n",
	    (unsigned int)result->major_status, (int)result->minor_status);

	return (TRUE);
}