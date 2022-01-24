#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ccr_softc {int detaching; TYPE_1__* adapter; int /*<<< orphan*/  sg_crp; int /*<<< orphan*/  sg_ulptx; int /*<<< orphan*/  sg_dsgl; int /*<<< orphan*/  iv_aad_buf; int /*<<< orphan*/  sg_iv_aad; int /*<<< orphan*/  lock; int /*<<< orphan*/  cid; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/ * ccr_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_CCR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct ccr_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct ccr_softc *sc;

	sc = FUNC1(dev);

	FUNC4(&sc->lock);
	sc->detaching = true;
	FUNC5(&sc->lock);

	FUNC0(sc->cid);

	FUNC3(&sc->lock);
	FUNC6(sc->sg_iv_aad);
	FUNC2(sc->iv_aad_buf, M_CCR);
	FUNC6(sc->sg_dsgl);
	FUNC6(sc->sg_ulptx);
	FUNC6(sc->sg_crp);
	sc->adapter->ccr_softc = NULL;
	return (0);
}