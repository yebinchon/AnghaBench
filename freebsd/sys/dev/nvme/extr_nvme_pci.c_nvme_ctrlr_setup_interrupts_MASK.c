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
struct nvme_controller {int msix_enabled; int num_io_queues; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int*) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int,int) ; 
 int mp_ncpus ; 
 int /*<<< orphan*/  FUNC3 (struct nvme_controller*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int smp_threads_per_core ; 
 int vm_ndomains ; 

__attribute__((used)) static void
FUNC7(struct nvme_controller *ctrlr)
{
	device_t	dev;
	int		force_intx, num_io_queues, per_cpu_io_queues;
	int		min_cpus_per_ioq;
	int		num_vectors_requested, num_vectors_allocated;

	dev = ctrlr->dev;

	force_intx = 0;
	FUNC0("hw.nvme.force_intx", &force_intx);
	if (force_intx || FUNC5(dev) < 2) {
		FUNC3(ctrlr);
		return;
	}

	num_io_queues = mp_ncpus;
	FUNC0("hw.nvme.num_io_queues", &num_io_queues);
	if (num_io_queues < 1 || num_io_queues > mp_ncpus)
		num_io_queues = mp_ncpus;

	per_cpu_io_queues = 1;
	FUNC0("hw.nvme.per_cpu_io_queues", &per_cpu_io_queues);
	if (per_cpu_io_queues == 0)
		num_io_queues = 1;

	min_cpus_per_ioq = smp_threads_per_core;
	FUNC0("hw.nvme.min_cpus_per_ioq", &min_cpus_per_ioq);
	if (min_cpus_per_ioq > 1) {
		num_io_queues = FUNC2(num_io_queues,
		    FUNC1(1, mp_ncpus / min_cpus_per_ioq));
	}

	num_io_queues = FUNC2(num_io_queues, FUNC5(dev) - 1);

again:
	if (num_io_queues > vm_ndomains)
		num_io_queues -= num_io_queues % vm_ndomains;
	/* One vector for per core I/O queue, plus one vector for admin queue. */
	num_vectors_requested = num_io_queues + 1;
	num_vectors_allocated = num_vectors_requested;
	if (FUNC4(dev, &num_vectors_allocated) != 0) {
		FUNC3(ctrlr);
		return;
	}
	if (num_vectors_allocated < 2) {
		FUNC6(dev);
		FUNC3(ctrlr);
		return;
	}
	if (num_vectors_allocated != num_vectors_requested) {
		FUNC6(dev);
		num_io_queues = num_vectors_allocated - 1;
		goto again;
	}

	ctrlr->msix_enabled = 1;
	ctrlr->num_io_queues = num_io_queues;
}