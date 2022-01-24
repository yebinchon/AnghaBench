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
struct iwm_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IWM_CSR_FH_INT_STATUS ; 
 int /*<<< orphan*/  IWM_CSR_INT ; 
 int /*<<< orphan*/  IWM_CSR_INT_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct iwm_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct iwm_softc *sc)
{
	/* disable interrupts */
	FUNC0(sc, IWM_CSR_INT_MASK, 0);

	/* acknowledge all interrupts */
	FUNC0(sc, IWM_CSR_INT, ~0);
	FUNC0(sc, IWM_CSR_FH_INT_STATUS, ~0);
}