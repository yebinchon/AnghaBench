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
typedef  int uint32_t ;
struct fwohci_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  OHCI_PHYACCESS ; 
 int /*<<< orphan*/  FUNC1 (struct fwohci_softc*,int /*<<< orphan*/ ,int) ; 
 int PHYDEV_REGADDR ; 
 int PHYDEV_WRCMD ; 
 int PHYDEV_WRDATA ; 
 int FUNC2 (struct fwohci_softc*,int) ; 

__attribute__((used)) static uint32_t
FUNC3(struct fwohci_softc *sc, uint32_t addr, uint32_t data)
{
	uint32_t fun;

	addr &= 0xf;
	data &= 0xff;

	fun = (PHYDEV_WRCMD | (addr << PHYDEV_REGADDR) |
	      (data << PHYDEV_WRDATA));
	FUNC1(sc, OHCI_PHYACCESS, fun);
	FUNC0(100);

	return (FUNC2(sc, addr));
}