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
struct TYPE_2__ {int /*<<< orphan*/  ar_arg_pid; } ;
struct kaudit_record {TYPE_1__ k_ar; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  ARG_PID ; 
 int /*<<< orphan*/  FUNC0 (struct kaudit_record*,int /*<<< orphan*/ ) ; 
 struct kaudit_record* FUNC1 () ; 

void
FUNC2(pid_t pid)
{
	struct kaudit_record *ar;

	ar = FUNC1();
	if (ar == NULL)
		return;

	ar->k_ar.ar_arg_pid = pid;
	FUNC0(ar, ARG_PID);
}