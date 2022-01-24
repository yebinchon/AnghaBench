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
struct TYPE_2__ {int ar_arg_len; int /*<<< orphan*/  ar_arg_ctlname; } ;
struct kaudit_record {TYPE_1__ k_ar; } ;

/* Variables and functions */
 int ARG_CTLNAME ; 
 int ARG_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct kaudit_record*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ *,int) ; 
 struct kaudit_record* FUNC2 () ; 

void
FUNC3(int *name, int namelen)
{
	struct kaudit_record *ar;

	ar = FUNC2();
	if (ar == NULL)
		return;

	FUNC1(name, &ar->k_ar.ar_arg_ctlname, namelen * sizeof(int));
	ar->k_ar.ar_arg_len = namelen;
	FUNC0(ar, ARG_CTLNAME | ARG_LEN);
}