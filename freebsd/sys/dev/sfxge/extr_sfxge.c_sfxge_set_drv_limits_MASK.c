#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ n_alloc; } ;
struct sfxge_softc {int /*<<< orphan*/  enp; TYPE_1__ intr; } ;
typedef  int /*<<< orphan*/  limits ;
struct TYPE_6__ {scalar_t__ edl_max_rxq_count; scalar_t__ edl_min_rxq_count; scalar_t__ edl_max_txq_count; scalar_t__ edl_min_txq_count; scalar_t__ edl_max_evq_count; scalar_t__ edl_min_evq_count; } ;
typedef  TYPE_2__ efx_drv_limits_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sfxge_softc*) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(struct sfxge_softc *sc)
{
	efx_drv_limits_t limits;

	FUNC2(&limits, 0, sizeof(limits));

	/* Limits are strict since take into account initial estimation */
	limits.edl_min_evq_count = limits.edl_max_evq_count =
	    sc->intr.n_alloc;
	limits.edl_min_txq_count = limits.edl_max_txq_count =
	    sc->intr.n_alloc + FUNC0(sc) - 1;
	limits.edl_min_rxq_count = limits.edl_max_rxq_count =
	    sc->intr.n_alloc;

	return (FUNC1(sc->enp, &limits));
}