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
typedef  int /*<<< orphan*/  uint16_t ;
struct mii_softc {int dummy; } ;

/* Variables and functions */
#define  BRGPHY_MII_DSP_RW_PORT 128 
 int /*<<< orphan*/  FUNC0 (struct mii_softc*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct mii_softc *sc)
{
	static const struct {
		int		reg;
		uint16_t	val;
	} dspcode[] = {
		{ BRGPHY_MII_DSP_RW_PORT,	0x0a75 },
		{ 0x1c,				0x8c68 },
		{ 0x1c,				0x8d68 },
		{ 0x1c,				0x8c68 },
		{ 0,				0 },
	};
	int i;

	for (i = 0; dspcode[i].reg != 0; i++)
		FUNC0(sc, dspcode[i].reg, dspcode[i].val);
}