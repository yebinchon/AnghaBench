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
typedef  int /*<<< orphan*/  u_int ;
struct bhnd_usb_softc {scalar_t__ sc_maddr; } ;
struct bhnd_usb_devinfo {int sdi_irq_mapped; int sdi_msize; int /*<<< orphan*/  sdi_rl; scalar_t__ sdi_irq; scalar_t__ sdi_maddr; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char const*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int) ; 
 struct bhnd_usb_softc* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct bhnd_usb_devinfo*) ; 
 int /*<<< orphan*/  FUNC7 (struct bhnd_usb_devinfo*,int /*<<< orphan*/ ) ; 
 struct bhnd_usb_devinfo* FUNC8 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (char const*,char*,int) ; 

__attribute__((used)) static device_t
FUNC14(device_t dev, u_int order, const char *name, int unit)
{
	struct bhnd_usb_softc		*sc;
	struct bhnd_usb_devinfo 	*sdi;
	device_t 			 child;
	int				 error;

	sc = FUNC5(dev);

	sdi = FUNC8(sizeof(struct bhnd_usb_devinfo), M_DEVBUF, M_NOWAIT|M_ZERO);
	if (sdi == NULL)
		return (NULL);

	FUNC12(&sdi->sdi_rl);
	sdi->sdi_irq_mapped = false;

	if (FUNC13(name, "ohci", 4) == 0) 
	{
		sdi->sdi_maddr = sc->sc_maddr + 0x000;
		sdi->sdi_msize = 0x200;
	}
	else if (FUNC13(name, "ehci", 4) == 0) 
	{
		sdi->sdi_maddr = sc->sc_maddr + 0x000;
		sdi->sdi_msize = 0x1000;
	}
	else
	{
		FUNC9("Unknown subdevice");
	}

	/* Map the child's IRQ */
	if ((error = FUNC2(dev, 0, &sdi->sdi_irq))) {
		FUNC0(dev, "could not map %s interrupt: %d", name,
		    error);
		goto failed;
	}
	sdi->sdi_irq_mapped = true;

	FUNC1(dev, "%s: irq=%ju maddr=0x%jx", name, sdi->sdi_irq,
	    sdi->sdi_maddr);

	/*
	 * Add memory window and irq to child's resource list.
	 */
	FUNC10(&sdi->sdi_rl, SYS_RES_MEMORY, 0, sdi->sdi_maddr,
	    sdi->sdi_maddr + sdi->sdi_msize - 1, sdi->sdi_msize);

	FUNC10(&sdi->sdi_rl, SYS_RES_IRQ, 0, sdi->sdi_irq,
	    sdi->sdi_irq, 1);

	child = FUNC4(dev, order, name, unit);
	if (child == NULL) {
		FUNC0(dev, "could not add %s", name);
		goto failed;
	}

	FUNC6(child, sdi);
	return (child);

failed:
	if (sdi->sdi_irq_mapped)
		FUNC3(dev, sdi->sdi_irq);

	FUNC11(&sdi->sdi_rl);

	FUNC7(sdi, M_DEVBUF);
	return (NULL);
}