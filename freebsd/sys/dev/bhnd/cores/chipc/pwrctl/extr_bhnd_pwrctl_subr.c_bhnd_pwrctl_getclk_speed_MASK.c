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
typedef  int /*<<< orphan*/  uint32_t ;
struct chipc_caps {int /*<<< orphan*/  pll_type; } ;
struct bhnd_pwrctl_softc {int /*<<< orphan*/  res; int /*<<< orphan*/  chipc_dev; } ;
struct bhnd_chipid {int dummy; } ;
typedef  scalar_t__ bus_size_t ;

/* Variables and functions */
 struct chipc_caps* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CHIPC_CLKC_N ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (struct bhnd_pwrctl_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct bhnd_chipid* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct bhnd_chipid const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct bhnd_chipid const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

uint32_t
FUNC6(struct bhnd_pwrctl_softc *sc)
{
	const struct bhnd_chipid	*cid;
	struct chipc_caps		*ccaps;
	bus_size_t			 creg;
	uint32_t 			 n, m;
	uint32_t 			 rate;

	FUNC1(sc, MA_OWNED);

	cid = FUNC3(sc->chipc_dev);
	ccaps = FUNC0(sc->chipc_dev);

	n = FUNC2(sc->res, CHIPC_CLKC_N);

	/* Get M register offset */
	creg = FUNC4(cid, ccaps->pll_type, &rate);
	if (creg == 0) /* fixed rate */
		return (rate);

	/* calculate rate */
	m = FUNC2(sc->res, creg);
	return (FUNC5(cid, ccaps->pll_type, n, m));
}