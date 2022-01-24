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
struct mwl_hal_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mwl_hal_priv*,int,int) ; 

__attribute__((used)) static void
FUNC1(struct mwl_hal_priv *mh, int SDRAMSIZE_Addr)
{
	/** Set up sdram controller for superflyv2 **/
	FUNC0(mh, 0x00006014, 0x33);
	FUNC0(mh, 0x00006018, 0xa3a2632);
	FUNC0(mh, 0x00006010, SDRAMSIZE_Addr);
}