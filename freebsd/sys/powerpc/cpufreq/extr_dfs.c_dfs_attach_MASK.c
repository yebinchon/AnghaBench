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
typedef  int uint16_t ;
struct dfs_softc {int dfs4; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int MPC7448 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct dfs_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct dfs_softc *sc;
	uint16_t vers;

	sc = FUNC1(dev);
	sc->dev = dev;
	sc->dfs4 = 0;
	vers = FUNC2() >> 16;

	/* The 7448 supports divide-by-four as well */
	if (vers == MPC7448)
		sc->dfs4 = 1;

	FUNC0(dev);
	return (0);
}