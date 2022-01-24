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
struct puc_softc {scalar_t__ sc_msi; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct puc_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct puc_softc *sc;
	int error;

	sc = FUNC0(dev);
	
	error = FUNC2(dev);

	if (error != 0)
		return (error);

	if (sc->sc_msi)
		error = FUNC1(dev);

	return (error);
}