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
struct svc_req {int dummy; } ;
typedef  int /*<<< orphan*/  domainname ;
typedef  scalar_t__ bool_t ;
struct TYPE_2__ {int /*<<< orphan*/  sc_domainname; } ;

/* Variables and functions */
 TYPE_1__* env ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool_t *
FUNC1(domainname *arg, struct svc_req *req)
{
	static bool_t	res;
	
	res = (bool_t)1;
	if (FUNC0(*arg, env->sc_domainname) != 0)
		res = (bool_t)0;
	return (&res);
}