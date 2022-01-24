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
struct ural_softc {int dummy; } ;

/* Variables and functions */
 int RAL_ENABLE_TSF ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  RAL_TXRX_CSR19 ; 
 int /*<<< orphan*/  FUNC1 (struct ural_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct ural_softc *sc)
{
	/* first, disable TSF synchronization */
	FUNC1(sc, RAL_TXRX_CSR19, 0);
	FUNC1(sc, RAL_TXRX_CSR19, RAL_ENABLE_TSF | FUNC0(2));
}