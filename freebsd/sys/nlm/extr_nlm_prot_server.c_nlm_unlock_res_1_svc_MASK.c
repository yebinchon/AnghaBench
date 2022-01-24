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
typedef  int /*<<< orphan*/  nlm_res ;
typedef  int /*<<< orphan*/  nlm4_res ;
typedef  int /*<<< orphan*/  bool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*,struct svc_req*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

bool_t
FUNC2(nlm_res *argp, void *result, struct svc_req *rqstp)
{
	nlm4_res arg4;

	FUNC1(&arg4, argp);
	return (FUNC0(&arg4, result, rqstp));
}