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
struct ip_fw_chain {int dummy; } ;
struct ip_fw_args {int dummy; } ;
typedef  int /*<<< orphan*/  ipfw_insn ;
struct TYPE_2__ {int (* handler ) (struct ip_fw_chain*,struct ip_fw_args*,int /*<<< orphan*/ *,int*) ;} ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct ip_fw_chain*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct ip_fw_chain*,struct ip_fw_args*,int /*<<< orphan*/ *,int*) ; 

int
FUNC2(struct ip_fw_chain *ch, struct ip_fw_args *args,
    ipfw_insn *cmd, int *done)
{

	return (FUNC0(ch, cmd)->handler(ch, args, cmd, done));
}