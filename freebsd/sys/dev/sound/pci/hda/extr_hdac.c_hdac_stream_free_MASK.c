#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct hdac_softc {TYPE_2__* streams; TYPE_1__* codecs; int /*<<< orphan*/  sdo_bw_used; } ;
typedef  size_t nid_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {int /*<<< orphan*/ * dev; scalar_t__ stream; scalar_t__ bw; } ;
struct TYPE_3__ {int /*<<< orphan*/  sdi_bw_used; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct hdac_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct hdac_softc*,int,int) ; 

__attribute__((used)) static void
FUNC4(device_t dev, device_t child, int dir, int stream)
{
	struct hdac_softc *sc = FUNC2(dev);
	nid_t cad = (uintptr_t)FUNC1(child);
	int ss;

	ss = FUNC3(sc, dir, stream);
	FUNC0(ss >= 0,
	    ("Free for not allocated stream (%d/%d)\n", dir, stream));
	if (dir == 1)
		sc->sdo_bw_used -= sc->streams[ss].bw;
	else
		sc->codecs[cad].sdi_bw_used -= sc->streams[ss].bw;
	sc->streams[ss].stream = 0;
	sc->streams[ss].dev = NULL;
}