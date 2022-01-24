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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;

/* Variables and functions */
 scalar_t__ INT_MDIO_CTRL ; 
 int INT_MDIO_CTRL_MCDIV_POS ; 
 int INT_MDIO_CTRL_RST ; 
 int INT_MDIO_CTRL_SMP ; 
 int INT_MDIO_CTRL_XDIV_POS ; 
 int /*<<< orphan*/  FUNC0 (int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int
FUNC2(uint64_t nae_base, int bus, int block,
    int intf_type)
{
	uint32_t val;

	val = (7 << INT_MDIO_CTRL_XDIV_POS) |
	    (1 << INT_MDIO_CTRL_MCDIV_POS) |
	    (INT_MDIO_CTRL_SMP);

	FUNC1(nae_base,
	    FUNC0(block, intf_type, (INT_MDIO_CTRL + bus * 4)),
	    val | INT_MDIO_CTRL_RST);

	FUNC1(nae_base,
	    FUNC0(block, intf_type, (INT_MDIO_CTRL + bus * 4)),
	    val);

        return (0);
}