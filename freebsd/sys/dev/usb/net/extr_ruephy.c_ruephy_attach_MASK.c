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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int MIIF_NOISOLATE ; 
 int MIIF_NOMANPAUSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ruephy_funcs ; 

__attribute__((used)) static int
FUNC1(device_t dev)
{

	FUNC0(dev, MIIF_NOISOLATE | MIIF_NOMANPAUSE,
	    &ruephy_funcs, 1);
	return (0);
}