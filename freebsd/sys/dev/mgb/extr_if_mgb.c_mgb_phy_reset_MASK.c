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
struct mgb_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mgb_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MGB_PHY_READY ; 
 int /*<<< orphan*/  MGB_PHY_RESET ; 
 int /*<<< orphan*/  MGB_PMT_CTL ; 
 scalar_t__ MGB_STS_TIMEOUT ; 
 int FUNC1 (struct mgb_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct mgb_softc *sc)
{

	FUNC0(sc, MGB_PMT_CTL, MGB_PHY_RESET);
	if (FUNC1(sc, MGB_PMT_CTL, 0, MGB_PHY_RESET) ==
	    MGB_STS_TIMEOUT)
		return MGB_STS_TIMEOUT;
	return (FUNC1(sc, MGB_PMT_CTL, MGB_PHY_READY, 0));
}