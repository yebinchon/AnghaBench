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
struct isci_softc {int /*<<< orphan*/  device; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct isci_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 struct isci_softc* g_isci ; 
 int /*<<< orphan*/  FUNC1 (struct isci_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct isci_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct isci_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct isci_softc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t device)
{
	int error;
	struct isci_softc *isci = FUNC0(device);

	g_isci = isci;
	isci->device = device;
	FUNC6(device);

	FUNC1(isci);

	error = FUNC3(isci);

	if (error)
	{
		FUNC2(device);
		return (error);
	}

	FUNC4(isci);
	FUNC5(isci);

	return (0);
}