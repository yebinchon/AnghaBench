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
struct TYPE_5__ {scalar_t__ minor_status; scalar_t__ major_status; int /*<<< orphan*/  status_string; int /*<<< orphan*/  message_context; } ;
typedef  TYPE_1__ display_status_res ;
struct TYPE_6__ {int /*<<< orphan*/  mech_type; int /*<<< orphan*/  status_type; int /*<<< orphan*/  status_value; int /*<<< orphan*/  message_context; } ;
typedef  TYPE_2__ display_status_args ;
typedef  int /*<<< orphan*/  bool_t ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,int) ; 

bool_t
FUNC2(display_status_args *argp, display_status_res *result, struct svc_req *rqstp)
{

	result->message_context = argp->message_context;
	result->major_status = FUNC0(&result->minor_status,
	    argp->status_value, argp->status_type, argp->mech_type,
	    &result->message_context, &result->status_string);
	FUNC1("gssd_display_status: done major=0x%x minor=%d\n",
	    (unsigned int)result->major_status, (int)result->minor_status);

	return (TRUE);
}