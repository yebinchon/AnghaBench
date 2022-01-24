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
struct amd_ntb_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMD_SIDEINFO_OFFSET ; 
 unsigned int AMD_SIDE_READY ; 
 unsigned int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void
FUNC2(struct amd_ntb_softc *ntb)
{
	unsigned int reg;

	reg = FUNC0(4, AMD_SIDEINFO_OFFSET);
	if (!(reg & AMD_SIDE_READY)) {
		reg |= AMD_SIDE_READY;
		FUNC1(4, AMD_SIDEINFO_OFFSET, reg);
	}
	reg = FUNC0(4, AMD_SIDEINFO_OFFSET);
}