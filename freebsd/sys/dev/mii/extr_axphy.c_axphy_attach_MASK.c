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
struct mii_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int MIIF_NOISOLATE ; 
 int MIIF_NOMANPAUSE ; 
 int /*<<< orphan*/  axphy_funcs ; 
 struct mii_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mii_softc*) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct mii_softc *sc;

	sc = FUNC0(dev);

	FUNC1(dev, MIIF_NOISOLATE | MIIF_NOMANPAUSE,
	    &axphy_funcs, 1);
	FUNC2(sc);

	return (0);
}