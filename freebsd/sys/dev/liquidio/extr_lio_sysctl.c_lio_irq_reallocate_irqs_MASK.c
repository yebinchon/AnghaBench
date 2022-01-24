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
struct TYPE_4__ {int /*<<< orphan*/  (* enable_interrupt ) (struct octeon_device*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* disable_interrupt ) (struct octeon_device*,int /*<<< orphan*/ ) ;} ;
struct octeon_device {int num_msix_irqs; TYPE_2__ fn_list; int /*<<< orphan*/  device; int /*<<< orphan*/ * msix_res; int /*<<< orphan*/  aux_vector; int /*<<< orphan*/ * tag; TYPE_1__* ioq_vector; scalar_t__ msix_on; } ;
struct TYPE_3__ {int /*<<< orphan*/ * msix_res; int /*<<< orphan*/  vector; int /*<<< orphan*/ * tag; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct octeon_device*) ; 
 int /*<<< orphan*/  OCTEON_ALL_INTR ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct octeon_device*,char*) ; 
 scalar_t__ FUNC4 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct octeon_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct octeon_device *oct, uint32_t num_ioqs)
{
	int	i, num_msix_irqs = 0;

	if (!oct->msix_on)
		return (0);

	/*
	 * Disable the input and output queues now. No more packets will
	 * arrive from Octeon.
	 */
	oct->fn_list.disable_interrupt(oct, OCTEON_ALL_INTR);

	if (oct->msix_on) {
		if (FUNC0(oct))
			num_msix_irqs = oct->num_msix_irqs - 1;

		for (i = 0; i < num_msix_irqs; i++) {
			if (oct->ioq_vector[i].tag != NULL) {
				FUNC2(oct->device,
						  oct->ioq_vector[i].msix_res,
						  oct->ioq_vector[i].tag);
				oct->ioq_vector[i].tag = NULL;
			}

			if (oct->ioq_vector[i].msix_res != NULL) {
				FUNC1(oct->device, SYS_RES_IRQ,
						     oct->ioq_vector[i].vector,
						 oct->ioq_vector[i].msix_res);
				oct->ioq_vector[i].msix_res = NULL;
			}
		}


		if (oct->tag != NULL) {
			FUNC2(oct->device, oct->msix_res, oct->tag);
			oct->tag = NULL;
		}

		if (oct->msix_res != NULL) {
			FUNC1(oct->device, SYS_RES_IRQ,
					     oct->aux_vector,
					     oct->msix_res);
			oct->msix_res = NULL;
		}

		FUNC5(oct->device);

	}

	if (FUNC4(oct, num_ioqs)) {
		FUNC3(oct, "Setup interuupt failed\n");
		return (1);
	}

	/* Enable Octeon device interrupts */
	oct->fn_list.enable_interrupt(oct, OCTEON_ALL_INTR);

	return (0);
}