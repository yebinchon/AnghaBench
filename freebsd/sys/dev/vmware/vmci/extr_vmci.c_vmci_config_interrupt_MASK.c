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
struct vmci_softc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct vmci_softc*) ; 
 int FUNC1 (struct vmci_softc*) ; 
 int FUNC2 (struct vmci_softc*) ; 

__attribute__((used)) static int
FUNC3(struct vmci_softc *sc)
{
	int error;

	error = FUNC1(sc);
	if (error)
		return (error);

	error = FUNC0(sc);
	if (error)
		return (error);

	error = FUNC2(sc);
	if (error)
		return (error);

	return (0);
}