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
struct xl_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct xl_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  xl_mii_bitbang_ops ; 

__attribute__((used)) static int
FUNC3(device_t dev, int phy, int reg, int data)
{
	struct xl_softc		*sc;

	sc = FUNC1(dev);

	/* Select the window 4. */
	FUNC0(4);

	FUNC2(dev, &xl_mii_bitbang_ops, phy, reg, data);

	return (0);
}