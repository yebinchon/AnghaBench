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
struct t3_ioq_entry {int dummy; } ;
struct ch_up_ioqs {int bufsize; int ioq_rx_enable; int ioq_tx_enable; int ioq_rx_status; int ioq_tx_status; TYPE_1__* data; } ;
typedef  int /*<<< orphan*/  ioqs ;
struct TYPE_2__ {int ioq_cp; int ioq_pp; int ioq_alen; int ioq_stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHELSIO_GET_UP_IOQS ; 
 int IOQS_BUFSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct ch_up_ioqs*,int) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ,struct ch_up_ioqs*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,...) ; 

__attribute__((used)) static int
FUNC5(int argc, char *argv[], int start_arg, const char *iff_name)
{
	struct ch_up_ioqs ioqs;
	int i, entries;

	(void) argc;
	(void) argv;
	(void) start_arg;

	FUNC0(&ioqs, sizeof(ioqs));
	ioqs.bufsize = IOQS_BUFSIZE;
	ioqs.data = FUNC3(IOQS_BUFSIZE);
	if (!ioqs.data)
		FUNC2(1, "uP_IOQs malloc");

	if (FUNC1(iff_name, CHELSIO_GET_UP_IOQS, &ioqs) < 0)
		 FUNC2(1, "uP_IOQs");

	FUNC4("ioq_rx_enable   : 0x%08x\n", ioqs.ioq_rx_enable);
	FUNC4("ioq_tx_enable   : 0x%08x\n", ioqs.ioq_tx_enable);
	FUNC4("ioq_rx_status   : 0x%08x\n", ioqs.ioq_rx_status);
	FUNC4("ioq_tx_status   : 0x%08x\n", ioqs.ioq_tx_status);
	
	entries = ioqs.bufsize / sizeof(struct t3_ioq_entry);
	for (i = 0; i < entries; i++) {
		FUNC4("\nioq[%d].cp       : 0x%08x\n", i,
		       ioqs.data[i].ioq_cp);
		FUNC4("ioq[%d].pp       : 0x%08x\n", i,
		       ioqs.data[i].ioq_pp);
		FUNC4("ioq[%d].alen     : 0x%08x\n", i,
		       ioqs.data[i].ioq_alen);
		FUNC4("ioq[%d].stats    : 0x%08x\n", i,
		       ioqs.data[i].ioq_stats);
		FUNC4("  sop %u\n", ioqs.data[i].ioq_stats >> 16);
		FUNC4("  eop %u\n", ioqs.data[i].ioq_stats  & 0xFFFF);
	}

	return 0;
}