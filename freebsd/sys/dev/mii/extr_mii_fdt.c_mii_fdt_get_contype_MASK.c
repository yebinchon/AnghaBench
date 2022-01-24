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
typedef  int /*<<< orphan*/  val ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  mii_contype_t ;

/* Variables and functions */
 int /*<<< orphan*/  MII_CONTYPE_UNKNOWN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

mii_contype_t
FUNC2(phandle_t macnode)
{
	char val[32];

	if (FUNC0(macnode, "phy-mode", val, sizeof(val)) <= 0 &&
	    FUNC0(macnode, "phy-connection-type", val, sizeof(val)) <= 0) {
                return (MII_CONTYPE_UNKNOWN);
	}
	return (FUNC1(val));
}