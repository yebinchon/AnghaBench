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
struct vscphy_softc {int /*<<< orphan*/  mii_sc; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  MIIF_NOMANPAUSE ; 
 struct vscphy_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct vscphy_softc*) ; 
 int /*<<< orphan*/  vscphy_funcs ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct vscphy_softc *vsc;

	vsc = FUNC0(dev);
	vsc->dev = dev;

#ifdef FDT
	vscphy_fdt_get_config(vsc);
#endif	

	FUNC1(dev, MIIF_NOMANPAUSE, &vscphy_funcs, 1);
	FUNC2(&vsc->mii_sc);

	return (0);
}