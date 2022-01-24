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
 int VTPCI_FLAG_MSIX ; 
 int VTPCI_FLAG_NO_MSIX ; 
 int VTPCI_FLAG_SHARED_MSIX ; 
 int FUNC0 (struct vtpci_softc*,int) ; 
 scalar_t__ vtpci_disable_msix ; 

__attribute__((used)) static int
FUNC1(struct vtpci_softc *sc)
{
	int error;

	if (vtpci_disable_msix != 0 ||
	    sc->vtpci_flags & VTPCI_FLAG_NO_MSIX)
		return (ENOTSUP);

	error = FUNC0(sc, 1);
	if (error)
		return (error);

	sc->vtpci_flags |= VTPCI_FLAG_MSIX | VTPCI_FLAG_SHARED_MSIX;

	return (0);
}