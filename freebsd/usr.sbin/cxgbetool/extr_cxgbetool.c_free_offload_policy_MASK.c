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
struct t4_offload_policy {int nrules; TYPE_1__* rule; } ;
struct TYPE_2__ {int /*<<< orphan*/  bpf_prog; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct t4_offload_policy *op)
{
	int i;

	for (i = 0; i < op->nrules; i++) {
		/*
		 * pcap_freecode can cope with empty bpf_prog, which is the case
		 * for an rule that matches on 'any/all/-'.
		 */
		FUNC1(&op->rule[i].bpf_prog);
	}
	FUNC0(op->rule);
	op->nrules = 0;
	op->rule = NULL;
}