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
struct vtpci_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct vtpci_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vtpci_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct vtpci_softc*) ; 

__attribute__((used)) static void
FUNC3(device_t dev, device_t child)
{
	struct vtpci_softc *sc;

	sc = FUNC0(dev);

	FUNC2(sc);
	FUNC1(sc);
}