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
struct vtpci_softc {int vtpci_flags; } ;

/* Variables and functions */
 int ENOTSUP ; 
 int VTPCI_FLAG_MSI ; 
 int VTPCI_FLAG_NO_MSI ; 
 int FUNC0 (struct vtpci_softc*) ; 

__attribute__((used)) static int
FUNC1(struct vtpci_softc *sc)
{
	int error;

	/* Only BHyVe supports MSI. */
	if (sc->vtpci_flags & VTPCI_FLAG_NO_MSI)
		return (ENOTSUP);

	error = FUNC0(sc);
	if (error)
		return (error);

	sc->vtpci_flags |= VTPCI_FLAG_MSI;

	return (0);
}