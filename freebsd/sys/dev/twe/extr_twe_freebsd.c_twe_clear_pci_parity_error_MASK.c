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
struct twe_softc {int /*<<< orphan*/  twe_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCIR_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct twe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TWE_CONTROL_CLEAR_PARITY_ERROR ; 
 int /*<<< orphan*/  TWE_PCI_CLEAR_PARITY_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC2(struct twe_softc *sc)
{
    FUNC0(sc, TWE_CONTROL_CLEAR_PARITY_ERROR);
    FUNC1(sc->twe_dev, PCIR_STATUS, TWE_PCI_CLEAR_PARITY_ERROR, 2);
}