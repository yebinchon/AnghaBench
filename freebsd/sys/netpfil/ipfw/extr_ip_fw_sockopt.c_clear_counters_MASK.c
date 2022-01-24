#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ip_fw {int dummy; } ;
struct TYPE_3__ {scalar_t__ opcode; } ;
struct TYPE_4__ {int /*<<< orphan*/  max_log; int /*<<< orphan*/  log_left; TYPE_1__ o; } ;
typedef  TYPE_2__ ipfw_insn_log ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ip_fw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_fw*) ; 
 scalar_t__ O_LOG ; 

__attribute__((used)) static void
FUNC2(struct ip_fw *rule, int log_only)
{
	ipfw_insn_log *l = (ipfw_insn_log *)FUNC0(rule);

	if (log_only == 0)
		FUNC1(rule);
	if (l->o.opcode == O_LOG)
		l->log_left = l->max_log;
}