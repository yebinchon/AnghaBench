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
typedef  int uint32_t ;
struct TYPE_2__ {int num_pf_rings; } ;
struct octeon_device {int num_msix_irqs; int vector; int aux_vector; int /*<<< orphan*/ * msix_res; int /*<<< orphan*/ * tag; int /*<<< orphan*/  affinity_mask; int /*<<< orphan*/  device; TYPE_1__ sriov_info; struct octeon_device* ioq_vector; int /*<<< orphan*/  msix_on; } ;
struct lio_ioq_vector {int num_msix_irqs; int vector; int aux_vector; int /*<<< orphan*/ * msix_res; int /*<<< orphan*/ * tag; int /*<<< orphan*/  affinity_mask; int /*<<< orphan*/  device; TYPE_1__ sriov_info; struct lio_ioq_vector* ioq_vector; int /*<<< orphan*/  msix_on; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct octeon_device*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct octeon_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct octeon_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct octeon_device*,char*,int,int) ; 
 int /*<<< orphan*/  lio_intr_handler ; 
 int /*<<< orphan*/  lio_msix_intr_handler ; 
 int mp_ncpus ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int) ; 
 int FUNC13 () ; 

int
FUNC14(struct octeon_device *oct, uint32_t num_ioqs)
{
	device_t		device;
	struct lio_ioq_vector	*ioq_vector;
	int	cpu_id, err, i;
	int	num_alloc_ioq_vectors;
	int	num_ioq_vectors;
	int	res_id;

	if (!oct->msix_on)
		return (1);

	ioq_vector = oct->ioq_vector;

#ifdef RSS
	if (oct->sriov_info.num_pf_rings != rss_getnumbuckets()) {
		lio_dev_info(oct, "IOQ vectors (%d) are not equal number of RSS buckets (%d)\n",
			     oct->sriov_info.num_pf_rings, rss_getnumbuckets());
	}
#endif

	device = oct->device;

	oct->num_msix_irqs = num_ioqs;
	/* one non ioq interrupt for handling sli_mac_pf_int_sum */
	oct->num_msix_irqs += 1;
	num_alloc_ioq_vectors = oct->num_msix_irqs;

	if (FUNC10(device, &num_alloc_ioq_vectors) ||
	    (num_alloc_ioq_vectors != oct->num_msix_irqs))
		goto err;

	num_ioq_vectors = oct->num_msix_irqs;

	/* For PF, there is one non-ioq interrupt handler */
	for (i = 0; i < num_ioq_vectors - 1; i++, ioq_vector++) {
		res_id = i + 1;

		ioq_vector->msix_res =
		    FUNC1(device, SYS_RES_IRQ, &res_id,
					   RF_SHAREABLE | RF_ACTIVE);
		if (ioq_vector->msix_res == NULL) {
			FUNC8(oct,
				    "Unable to allocate bus res msix[%d]\n", i);
			goto err_1;
		}

		err = FUNC5(device, ioq_vector->msix_res,
				     INTR_TYPE_NET | INTR_MPSAFE, NULL,
				     lio_msix_intr_handler, ioq_vector,
				     &ioq_vector->tag);
		if (err) {
			FUNC4(device, SYS_RES_IRQ, res_id,
					     ioq_vector->msix_res);
			ioq_vector->msix_res = NULL;
			FUNC8(oct, "Failed to register intr handler");
			goto err_1;
		}

		FUNC3(device, ioq_vector->msix_res, ioq_vector->tag,
				  "rxtx%u", i);
		ioq_vector->vector = res_id;

#ifdef RSS
		cpu_id = rss_getcpu(i % rss_getnumbuckets());
#else
		cpu_id = i % mp_ncpus;
#endif
		FUNC0(cpu_id, &ioq_vector->affinity_mask);

		/* Setting the IRQ affinity. */
		err = FUNC2(device, ioq_vector->msix_res, cpu_id);
		if (err)
			FUNC8(oct, "bus bind interrupt fail");
#ifdef RSS
		lio_dev_dbg(oct, "Bound RSS bucket %d to CPU %d\n", i, cpu_id);
#else
		FUNC7(oct, "Bound Queue %d to CPU %d\n", i, cpu_id);
#endif
	}

	FUNC7(oct, "MSI-X enabled\n");

	res_id = num_ioq_vectors;
	oct->msix_res = FUNC1(device, SYS_RES_IRQ, &res_id,
					       RF_SHAREABLE | RF_ACTIVE);
	if (oct->msix_res == NULL) {
		FUNC8(oct, "Unable to allocate bus res msix for non-ioq interrupt\n");
		goto err_1;
	}

	err = FUNC5(device, oct->msix_res, INTR_TYPE_NET | INTR_MPSAFE,
			     NULL, lio_intr_handler, oct, &oct->tag);
	if (err) {
		FUNC4(device, SYS_RES_IRQ, res_id,
				     oct->msix_res);
		oct->msix_res = NULL;
		FUNC8(oct, "Failed to register intr handler");
		goto err_1;
	}

	FUNC3(device, oct->msix_res, oct->tag, "aux");
	oct->aux_vector = res_id;

	return (0);
err_1:
	if (oct->tag != NULL) {
		FUNC6(device, oct->msix_res, oct->tag);
		oct->tag = NULL;
	}

	while (i) {
		i--;
		ioq_vector--;

		if (ioq_vector->tag != NULL) {
			FUNC6(device, ioq_vector->msix_res,
					  ioq_vector->tag);
			ioq_vector->tag = NULL;
		}

		if (ioq_vector->msix_res != NULL) {
			FUNC4(device, SYS_RES_IRQ,
					     ioq_vector->vector,
					     ioq_vector->msix_res);
			ioq_vector->msix_res = NULL;
		}
	}

	if (oct->msix_res != NULL) {
		FUNC4(device, SYS_RES_IRQ, oct->aux_vector,
				     oct->msix_res);
		oct->msix_res = NULL;
	}
err:
	FUNC11(device);
	FUNC8(oct, "MSI-X disabled\n");
	return (1);
}