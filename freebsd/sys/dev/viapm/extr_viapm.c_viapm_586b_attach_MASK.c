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
struct viapm_softc {int /*<<< orphan*/  lock; scalar_t__ iores; int /*<<< orphan*/  iorid; int /*<<< orphan*/  iicbb; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  GPIO_DIR ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int VIAPM_SCL ; 
 int VIAPM_SDA ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	struct viapm_softc *viapm = (struct viapm_softc *)FUNC7(dev);

	FUNC10(&viapm->lock, FUNC6(dev), "viapm", MTX_DEF);
	if (!(viapm->iores = FUNC2(dev, SYS_RES_IOPORT,
		&viapm->iorid, RF_ACTIVE | RF_SHAREABLE))) {
		FUNC8(dev, "could not allocate bus resource\n");
		goto error;
	}

	FUNC1(GPIO_DIR, FUNC0(GPIO_DIR) | VIAPM_SCL | VIAPM_SDA);

	/* add generic bit-banging code */
	if (!(viapm->iicbb = FUNC5(dev, "iicbb", -1)))
		goto error;

	FUNC3(dev);

	return 0;

error:
	if (viapm->iores)
		FUNC4(dev, SYS_RES_IOPORT,
					viapm->iorid, viapm->iores);
	FUNC9(&viapm->lock);
	return ENXIO;
}