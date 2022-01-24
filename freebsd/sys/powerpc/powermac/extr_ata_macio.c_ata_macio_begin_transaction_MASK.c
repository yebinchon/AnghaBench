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
struct ata_request {size_t unit; int /*<<< orphan*/  parent; } ;
struct ata_macio_softc {int* udmaconf; int* wdmaconf; int* pioconf; int /*<<< orphan*/  sc_mem; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_MACIO_TIMINGREG ; 
 int FUNC0 (struct ata_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct ata_macio_softc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct ata_request *request)
{
	struct ata_macio_softc *sc = FUNC2(request->parent);

	FUNC1(sc->sc_mem, ATA_MACIO_TIMINGREG, 
	    sc->udmaconf[request->unit] | sc->wdmaconf[request->unit] 
	    | sc->pioconf[request->unit]); 

	return FUNC0(request);
}