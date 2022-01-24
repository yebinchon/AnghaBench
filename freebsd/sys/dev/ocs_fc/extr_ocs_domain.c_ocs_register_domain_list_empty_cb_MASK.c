#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {void (* domain_list_empty_cb ) (TYPE_1__*,void*) ;int /*<<< orphan*/  domain_list; void* domain_list_empty_cb_arg; } ;
typedef  TYPE_1__ ocs_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 void FUNC3 (TYPE_1__*,void*) ; 

void
FUNC4(ocs_t *ocs, void (*callback)(ocs_t *ocs, void *arg), void *arg)
{
	FUNC0(ocs);
		ocs->domain_list_empty_cb = callback;
		ocs->domain_list_empty_cb_arg = arg;
		if (FUNC2(&ocs->domain_list) && callback) {
			(*callback)(ocs, arg);
		}
	FUNC1(ocs);
}