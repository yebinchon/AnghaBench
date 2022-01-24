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
struct fsl_sdhci_softc {int /*<<< orphan*/  gpio; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct fsl_sdhci_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(device_t bus, device_t child)
{
	struct fsl_sdhci_softc *sc = FUNC0(bus);

	return (FUNC1(sc->gpio));
}