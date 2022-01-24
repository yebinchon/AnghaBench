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
typedef  scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ (* setup_device_regs ) (struct octeon_device*) ;int /*<<< orphan*/  (* disable_io_queues ) (struct octeon_device*) ;} ;
struct TYPE_3__ {int oq; int iq; } ;
struct octeon_device {scalar_t__ num_iqs; TYPE_2__ fn_list; TYPE_1__ io_qmask; } ;
struct lio {struct octeon_device* oct_dev; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (struct octeon_device*) ; 
 int FUNC2 (struct octeon_device*) ; 
 struct lio* FUNC3 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC4 (struct octeon_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct octeon_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct octeon_device*,char*) ; 
 scalar_t__ FUNC7 (struct ifnet*,scalar_t__) ; 
 scalar_t__ FUNC8 (struct octeon_device*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (struct octeon_device*) ; 
 scalar_t__ FUNC10 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct octeon_device*) ; 
 scalar_t__ FUNC12 (struct octeon_device*) ; 

__attribute__((used)) static int
FUNC13(struct ifnet *ifp, uint32_t num_qs)
{
	struct lio		*lio = FUNC3(ifp);
	struct octeon_device	*oct = lio->oct_dev;
	int	i, update = 0;

	if (FUNC10(oct))
		FUNC6(oct, "There were pending requests\n");

	if (FUNC9(oct))
		FUNC6(oct, "IQ had pending instructions\n");


	/*
	 * Disable the input and output queues now. No more packets will
	 * arrive from Octeon.
	 */
	oct->fn_list.disable_io_queues(oct);

	if (num_qs != oct->num_iqs)
		update = 1;

	for (i = 0; i < FUNC2(oct); i++) {
		if (!(oct->io_qmask.oq & FUNC0(i)))
			continue;

		FUNC4(oct, i);
	}

	for (i = 0; i < FUNC1(oct); i++) {
		if (!(oct->io_qmask.iq & FUNC0(i)))
			continue;

		FUNC5(oct, i);
	}

	if (oct->fn_list.setup_device_regs(oct)) {
		FUNC6(oct, "Failed to configure device registers\n");
		return (-1);
	}

	if (FUNC8(oct, 0, num_qs, num_qs)) {
		FUNC6(oct, "IO queues initialization failed\n");
		return (-1);
	}

	if (update && FUNC7(ifp, num_qs))
		return (-1);

	return (0);
}