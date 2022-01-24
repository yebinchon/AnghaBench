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
struct resource {int dummy; } ;
struct proto_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int PCIM_BAR_MEM_64 ; 
 int PCIM_BAR_MEM_TYPE ; 
 int FUNC0 (int) ; 
 int PCIR_MAX_BAR_0 ; 
 scalar_t__ FUNC1 (int) ; 
 int PROTO_RES_BUSDMA ; 
 int PROTO_RES_PCICFG ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int SYS_RES_IOPORT ; 
 int SYS_RES_IRQ ; 
 int SYS_RES_MEMORY ; 
 struct resource* FUNC2 (int /*<<< orphan*/ ,int,int*,int) ; 
 struct proto_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct proto_softc*,int,int,struct resource*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct proto_softc *sc;
	struct resource *res;
	uint32_t val;
	int bar, rid, type;

	sc = FUNC3(dev);

	FUNC5(sc, PROTO_RES_PCICFG, 0, NULL);
	FUNC5(sc, PROTO_RES_BUSDMA, 0, NULL);

	for (bar = 0; bar < PCIR_MAX_BAR_0; bar++) {
		rid = FUNC0(bar);
		val = FUNC4(dev, rid, 4);
		type = (FUNC1(val)) ? SYS_RES_IOPORT : SYS_RES_MEMORY;
		res = FUNC2(dev, type, &rid, RF_ACTIVE);
		if (res == NULL)
			continue;
		FUNC5(sc, type, rid, res);
		if (type == SYS_RES_IOPORT)
			continue;
		/* Skip over adjacent BAR for 64-bit memory BARs. */
		if ((val & PCIM_BAR_MEM_TYPE) == PCIM_BAR_MEM_64)
			bar++;
	}

	rid = 0;
	type = SYS_RES_IRQ;
	res = FUNC2(dev, type, &rid, RF_ACTIVE | RF_SHAREABLE);
	if (res != NULL)
		FUNC5(sc, type, rid, res);
	return (FUNC6(dev));
}