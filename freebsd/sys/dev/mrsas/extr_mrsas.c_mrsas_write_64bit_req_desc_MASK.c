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
typedef  int /*<<< orphan*/  u_int32_t ;
struct mrsas_softc {int /*<<< orphan*/  pci_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  inbound_high_queue_port ; 
 int /*<<< orphan*/  inbound_low_queue_port ; 
 int /*<<< orphan*/  mrsas_reg_set ; 
 int /*<<< orphan*/  FUNC0 (struct mrsas_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(struct mrsas_softc *sc, u_int32_t req_desc_lo,
    u_int32_t req_desc_hi)
{
	FUNC1(&sc->pci_lock);
	FUNC0(sc, FUNC3(mrsas_reg_set, inbound_low_queue_port),
	    req_desc_lo);
	FUNC0(sc, FUNC3(mrsas_reg_set, inbound_high_queue_port),
	    req_desc_hi);
	FUNC2(&sc->pci_lock);
}