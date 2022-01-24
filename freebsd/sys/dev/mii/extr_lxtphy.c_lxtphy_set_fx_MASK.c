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

/* Variables and functions */
 int CONFIG_100BASEFX ; 
 int /*<<< orphan*/  MII_LXTPHY_CONFIG ; 
 int FUNC0 (struct mii_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mii_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct mii_softc *sc)
{
	int cfg;

	cfg = FUNC0(sc, MII_LXTPHY_CONFIG);
	cfg |= CONFIG_100BASEFX;
	FUNC1(sc, MII_LXTPHY_CONFIG, cfg);
}