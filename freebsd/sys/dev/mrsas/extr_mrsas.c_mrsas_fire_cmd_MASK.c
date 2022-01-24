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
struct mrsas_softc {scalar_t__ atomic_desc_support; } ;

/* Variables and functions */
 int /*<<< orphan*/  inbound_single_queue_port ; 
 int /*<<< orphan*/  mrsas_reg_set ; 
 int /*<<< orphan*/  FUNC0 (struct mrsas_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mrsas_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(struct mrsas_softc *sc, u_int32_t req_desc_lo,
    u_int32_t req_desc_hi)
{
	if (sc->atomic_desc_support)
		FUNC1(sc, FUNC2(mrsas_reg_set, inbound_single_queue_port),
		    req_desc_lo);
	else
		FUNC0(sc, req_desc_lo, req_desc_hi);
}