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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  ar_arg_fcntl_rights; } ;
struct kaudit_record {TYPE_1__ k_ar; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARG_FCNTL_RIGHTS ; 
 int /*<<< orphan*/  FUNC0 (struct kaudit_record*,int /*<<< orphan*/ ) ; 
 struct kaudit_record* FUNC1 () ; 

void
FUNC2(uint32_t fcntlrights)
{
	struct kaudit_record *ar;

	ar = FUNC1();
	if (ar == NULL)
		return;

	ar->k_ar.ar_arg_fcntl_rights = fcntlrights;
	FUNC0(ar, ARG_FCNTL_RIGHTS);
}