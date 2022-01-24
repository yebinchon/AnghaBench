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
struct nicpf {int /*<<< orphan*/  check_link_mtx; int /*<<< orphan*/  check_link; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct nicpf* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nicpf*) ; 
 int /*<<< orphan*/  FUNC5 (struct nicpf*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct nicpf *nic;
	int err;

	err = 0;
	nic = FUNC1(dev);

	FUNC0(&nic->check_link);
	FUNC3(&nic->check_link_mtx);

	FUNC4(nic);
	FUNC5(nic);
	FUNC6(dev);

#ifdef PCI_IOV
	err = pci_iov_detach(dev);
	if (err != 0)
		device_printf(dev, "SR-IOV in use. Detach first.\n");
#endif
	return (err);
}