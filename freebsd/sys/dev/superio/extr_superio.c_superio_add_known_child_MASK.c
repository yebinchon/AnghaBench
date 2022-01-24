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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  superio_dev_type_t ;
struct superio_devinfo {void* dma; void* irq; void* iobase2; void* iobase; int /*<<< orphan*/  type; int /*<<< orphan*/  ldn; } ;
struct siosc {int /*<<< orphan*/  devlist; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct superio_devinfo*,int /*<<< orphan*/ ) ; 
 struct superio_devinfo* FUNC2 (int /*<<< orphan*/ *) ; 
 struct siosc* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC6 (struct siosc*) ; 
 int /*<<< orphan*/  FUNC7 (struct siosc*) ; 
 void* FUNC8 (struct siosc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC9(device_t dev, superio_dev_type_t type, uint8_t ldn)
{
	struct siosc *sc = FUNC3(dev);
	struct superio_devinfo *dinfo;
	device_t child;

	child = FUNC0(dev, 0, NULL, -1);
	if (child == NULL) {
		FUNC4(dev, "failed to add child for ldn %d, type %s\n",
		    ldn, FUNC5(type));
		return;
	}
	dinfo = FUNC2(child);
	dinfo->ldn = ldn;
	dinfo->type = type;
	FUNC6(sc);
	dinfo->iobase = FUNC8(sc, ldn, 0x60);
	dinfo->iobase2 = FUNC8(sc, ldn, 0x62);
	dinfo->irq = FUNC8(sc, ldn, 0x70);
	dinfo->dma = FUNC8(sc, ldn, 0x74);
	FUNC7(sc);
	FUNC1(&sc->devlist, dinfo, link);
}