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
 int /*<<< orphan*/  IWM_CSR_HW_IF_CONFIG_REG ; 
 int /*<<< orphan*/  IWM_CSR_HW_IF_CONFIG_REG_BIT_NIC_READY ; 
 int /*<<< orphan*/  IWM_CSR_MBOX_SET_REG ; 
 int /*<<< orphan*/  IWM_CSR_MBOX_SET_REG_OS_ALIVE ; 
 int /*<<< orphan*/  IWM_HW_READY_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct iwm_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct iwm_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC2(struct iwm_softc *sc)
{
	int ready;

	FUNC0(sc, IWM_CSR_HW_IF_CONFIG_REG,
	    IWM_CSR_HW_IF_CONFIG_REG_BIT_NIC_READY);

	ready = FUNC1(sc, IWM_CSR_HW_IF_CONFIG_REG,
	    IWM_CSR_HW_IF_CONFIG_REG_BIT_NIC_READY,
	    IWM_CSR_HW_IF_CONFIG_REG_BIT_NIC_READY,
	    IWM_HW_READY_TIMEOUT);
	if (ready) {
		FUNC0(sc, IWM_CSR_MBOX_SET_REG,
		    IWM_CSR_MBOX_SET_REG_OS_ALIVE);
	}
	return ready;
}