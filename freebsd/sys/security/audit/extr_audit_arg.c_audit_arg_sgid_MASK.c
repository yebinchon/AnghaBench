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
struct TYPE_2__ {int /*<<< orphan*/  ar_arg_sgid; } ;
struct kaudit_record {TYPE_1__ k_ar; } ;
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kaudit_record*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ARG_SGID ; 
 struct kaudit_record* FUNC1 () ; 

void
FUNC2(gid_t sgid)
{
	struct kaudit_record *ar;

	ar = FUNC1();
	if (ar == NULL)
		return;

	ar->k_ar.ar_arg_sgid = sgid;
	FUNC0(ar, ARG_SGID);
}