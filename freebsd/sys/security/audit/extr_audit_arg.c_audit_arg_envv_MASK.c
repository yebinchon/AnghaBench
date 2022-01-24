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
struct TYPE_2__ {int ar_arg_envc; int /*<<< orphan*/  ar_arg_envv; } ;
struct kaudit_record {TYPE_1__ k_ar; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARG_ENVV ; 
 int /*<<< orphan*/  FUNC0 (struct kaudit_record*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_AUDITTEXT ; 
 int /*<<< orphan*/  M_WAITOK ; 
 scalar_t__ audit_arge ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 struct kaudit_record* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(char *envv, int envc, int length)
{
	struct kaudit_record *ar;

	if (audit_arge == 0)
		return;

	ar = FUNC2();
	if (ar == NULL)
		return;

	ar->k_ar.ar_arg_envv = FUNC3(length, M_AUDITTEXT, M_WAITOK);
	FUNC1(envv, ar->k_ar.ar_arg_envv, length);
	ar->k_ar.ar_arg_envc = envc;
	FUNC0(ar, ARG_ENVV);
}