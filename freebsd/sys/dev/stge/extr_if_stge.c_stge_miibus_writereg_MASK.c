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
struct stge_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct stge_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct stge_softc*) ; 
 struct stge_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  stge_mii_bitbang_ops ; 

__attribute__((used)) static int
FUNC4(device_t dev, int phy, int reg, int val)
{
	struct stge_softc *sc;

	sc = FUNC2(dev);

	FUNC0(sc);
	FUNC3(dev, &stge_mii_bitbang_ops, phy, reg, val);
	FUNC1(sc);
	return (0);
}