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
struct amd_ntb_softc {int /*<<< orphan*/  device; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amd_ntb_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct amd_ntb_softc*) ; 
 int FUNC3 (struct amd_ntb_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct amd_ntb_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct amd_ntb_softc*) ; 
 struct amd_ntb_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(device_t device)
{
	struct amd_ntb_softc *ntb = FUNC6(device);
	int error;

	ntb->device = device;

	/* Enable PCI bus mastering for "device" */
	FUNC8(ntb->device);

	error = FUNC3(ntb);
	if (error)
		goto out;
		
	error = FUNC2(ntb);
	if (error)
		goto out;

	FUNC0(ntb);

	FUNC4(ntb);

	FUNC5(ntb);

	/* Attach children to this controller */
	error = FUNC7(device);

out:
	if (error)
		FUNC1(device);

	return (error);
}