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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_3__ {int beta; } ;
struct TYPE_4__ {TYPE_1__ htcp_ca; } ;
struct sctp_nets {int cwnd; int mtu; TYPE_2__ cc_mod; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sctp_nets*) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned int) ; 

__attribute__((used)) static uint32_t
FUNC2(struct sctp_nets *net)
{
	FUNC0(net);
	return (FUNC1(((net->cwnd / net->mtu * net->cc_mod.htcp_ca.beta) >> 7) * net->mtu, 2U * net->mtu));
}