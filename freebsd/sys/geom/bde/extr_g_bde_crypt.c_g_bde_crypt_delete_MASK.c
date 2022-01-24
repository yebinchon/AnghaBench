#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_char ;
struct g_bde_work {scalar_t__ length; TYPE_1__* sp; struct g_bde_softc* softc; } ;
struct g_bde_softc {scalar_t__ sectorsize; } ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  keyInstance ;
typedef  int /*<<< orphan*/  cipherInstance ;
struct TYPE_2__ {scalar_t__* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  DIR_ENCRYPT ; 
 int /*<<< orphan*/  G_BDE_SKEYBITS ; 
 int G_BDE_SKEYLEN ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int,int) ; 

void
FUNC4(struct g_bde_work *wp)
{
	struct g_bde_softc *sc;
	u_char *d;
	off_t o;
	u_char skey[G_BDE_SKEYLEN];
	keyInstance ki;
	cipherInstance ci;

	sc = wp->softc;
	d = wp->sp->data;
	FUNC1(&ci);
	/*
	 * Do not unroll this loop!
	 * Our zone may be significantly wider than the amount of random
	 * bytes arc4rand likes to give in one reseeding, whereas our
	 * sectorsize is far more likely to be in the same range.
	 */
	for (o = 0; o < wp->length; o += sc->sectorsize) {
		FUNC3(d, sc->sectorsize, 0);
		FUNC3(skey, sizeof skey, 0);
		FUNC2(&ki, DIR_ENCRYPT, G_BDE_SKEYBITS, skey);
		FUNC0(&ci, &ki, d, d, sc->sectorsize);
		d += sc->sectorsize;
	}
	/*
	 * Having written a long random sequence to disk here, we want to
	 * force a reseed, to avoid weakening the next time we use random
	 * data for something important.
	 */
	FUNC3(&o, sizeof o, 1);
}