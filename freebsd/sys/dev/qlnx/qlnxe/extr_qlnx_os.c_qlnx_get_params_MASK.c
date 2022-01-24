#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  pci_dev; } ;
typedef  TYPE_1__ qlnx_host_t ;

/* Variables and functions */
 scalar_t__ QLNX_MAX_RSS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ qlnxe_queue_count ; 

__attribute__((used)) static void
FUNC1(qlnx_host_t *ha)
{
	if ((qlnxe_queue_count < 0) || (qlnxe_queue_count > QLNX_MAX_RSS)) {
		FUNC0(ha->pci_dev, "invalid queue_count value (%d)\n",
			qlnxe_queue_count);
		qlnxe_queue_count = 0;
	}
	return;
}