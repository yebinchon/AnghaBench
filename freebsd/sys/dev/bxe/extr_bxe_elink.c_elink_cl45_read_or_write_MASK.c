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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint16_t ;
struct elink_phy {int dummy; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,struct elink_phy*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,struct elink_phy*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC2(struct bxe_softc *sc, struct elink_phy *phy,
				     uint8_t devad, uint16_t reg, uint16_t or_val)
{
	uint16_t val;
	FUNC0(sc, phy, devad, reg, &val);
	FUNC1(sc, phy, devad, reg, val | or_val);
}