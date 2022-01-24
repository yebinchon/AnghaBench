#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  unsigned int uint32_t ;
struct nmreq_vale_polling {unsigned int nr_first_cpu_id; unsigned int nr_num_polling_cpus; scalar_t__ nr_mode; } ;
struct nm_bdg_polling_state {scalar_t__ mode; unsigned int qfirst; unsigned int qlast; unsigned int cpu_from; unsigned int ncpus; } ;
struct netmap_adapter {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ NETMAP_POLLING_MODE_MULTI_CPU ; 
 scalar_t__ NETMAP_POLLING_MODE_SINGLE_CPU ; 
 int /*<<< orphan*/  NR_RX ; 
 unsigned int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 unsigned int FUNC3 (struct netmap_adapter*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct nmreq_vale_polling *req, struct netmap_adapter *na,
		struct nm_bdg_polling_state *bps)
{
	unsigned int avail_cpus, core_from;
	unsigned int qfirst, qlast;
	uint32_t i = req->nr_first_cpu_id;
	uint32_t req_cpus = req->nr_num_polling_cpus;

	avail_cpus = FUNC0();

	if (req_cpus == 0) {
		FUNC1("req_cpus must be > 0");
		return EINVAL;
	} else if (req_cpus >= avail_cpus) {
		FUNC1("Cannot use all the CPUs in the system");
		return EINVAL;
	}

	if (req->nr_mode == NETMAP_POLLING_MODE_MULTI_CPU) {
		/* Use a separate core for each ring. If nr_num_polling_cpus>1
		 * more consecutive rings are polled.
		 * For example, if nr_first_cpu_id=2 and nr_num_polling_cpus=2,
		 * ring 2 and 3 are polled by core 2 and 3, respectively. */
		if (i + req_cpus > FUNC3(na, NR_RX)) {
			FUNC1("Rings %u-%u not in range (have %d rings)",
				i, i + req_cpus, FUNC3(na, NR_RX));
			return EINVAL;
		}
		qfirst = i;
		qlast = qfirst + req_cpus;
		core_from = qfirst;

	} else if (req->nr_mode == NETMAP_POLLING_MODE_SINGLE_CPU) {
		/* Poll all the rings using a core specified by nr_first_cpu_id.
		 * the number of cores must be 1. */
		if (req_cpus != 1) {
			FUNC1("ncpus must be 1 for NETMAP_POLLING_MODE_SINGLE_CPU "
				"(was %d)", req_cpus);
			return EINVAL;
		}
		qfirst = 0;
		qlast = FUNC3(na, NR_RX);
		core_from = i;
	} else {
		FUNC1("Invalid polling mode");
		return EINVAL;
	}

	bps->mode = req->nr_mode;
	bps->qfirst = qfirst;
	bps->qlast = qlast;
	bps->cpu_from = core_from;
	bps->ncpus = req_cpus;
	FUNC2("%s qfirst %u qlast %u cpu_from %u ncpus %u",
		req->nr_mode == NETMAP_POLLING_MODE_MULTI_CPU ?
		"MULTI" : "SINGLE",
		qfirst, qlast, core_from, req_cpus);
	return 0;
}