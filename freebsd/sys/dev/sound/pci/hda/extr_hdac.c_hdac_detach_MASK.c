#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct hdac_softc {int num_ss; int /*<<< orphan*/  lock; int /*<<< orphan*/ * chan_dmat; int /*<<< orphan*/  corb_dma; int /*<<< orphan*/  rirb_dma; int /*<<< orphan*/  pos_dma; TYPE_2__* streams; int /*<<< orphan*/  unsolq_task; TYPE_1__* codecs; } ;
struct TYPE_12__ {int /*<<< orphan*/  bdl; } ;
typedef  TYPE_2__ device_t ;
struct TYPE_11__ {int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_HDAC ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_2__,TYPE_2__) ; 
 int FUNC2 (TYPE_2__,TYPE_2__**,int*) ; 
 scalar_t__ FUNC3 (TYPE_2__) ; 
 struct hdac_softc* FUNC4 (TYPE_2__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hdac_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct hdac_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct hdac_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct hdac_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct hdac_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct hdac_softc*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_thread ; 

__attribute__((used)) static int
FUNC14(device_t dev)
{
	struct hdac_softc *sc = FUNC4(dev);
	device_t *devlist;
	int cad, i, devcount, error;

	if ((error = FUNC2(dev, &devlist, &devcount)) != 0)
		return (error);
	for (i = 0; i < devcount; i++) {
		cad = (intptr_t)FUNC3(devlist[i]);
		if ((error = FUNC1(dev, devlist[i])) != 0) {
			FUNC5(devlist, M_TEMP);
			return (error);
		}
		sc->codecs[cad].dev = NULL;
	}
	FUNC5(devlist, M_TEMP);

	FUNC8(sc);
	FUNC10(sc, 0);
	FUNC11(sc);
	FUNC13(taskqueue_thread, &sc->unsolq_task);
	FUNC7(sc);

	for (i = 0; i < sc->num_ss; i++)
		FUNC6(sc, &sc->streams[i].bdl);
	FUNC5(sc->streams, M_HDAC);
	FUNC6(sc, &sc->pos_dma);
	FUNC6(sc, &sc->rirb_dma);
	FUNC6(sc, &sc->corb_dma);
	if (sc->chan_dmat != NULL) {
		FUNC0(sc->chan_dmat);
		sc->chan_dmat = NULL;
	}
	FUNC9(sc);
	FUNC12(sc->lock);
	return (0);
}