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
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct g_bde_work {scalar_t__ length; int ko; scalar_t__ offset; scalar_t__ data; TYPE_1__* ksp; struct g_bde_softc* softc; } ;
struct g_bde_softc {int sectorsize; } ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  keyInstance ;
typedef  int /*<<< orphan*/  cipherInstance ;
struct TYPE_2__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DIR_DECRYPT ; 
 int /*<<< orphan*/  G_BDE_SKEYBITS ; 
 int G_BDE_SKEYLEN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct g_bde_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

void
FUNC5(struct g_bde_work *wp)
{
	struct g_bde_softc *sc;
	u_char *d;
	u_int n;
	off_t o;
	u_char skey[G_BDE_SKEYLEN];
	keyInstance ki;
	cipherInstance ci;
	

	FUNC1(&ci);
	sc = wp->softc;
	o = 0;
	for (n = 0; o < wp->length; n++, o += sc->sectorsize) {
		d = (u_char *)wp->ksp->data + wp->ko + n * G_BDE_SKEYLEN;
		FUNC4(sc, &ki, DIR_DECRYPT, wp->offset + o);
		FUNC0(&ci, &ki, d, skey, sizeof skey);
		d = (u_char *)wp->data + o;
		FUNC2(&ki, DIR_DECRYPT, G_BDE_SKEYBITS, skey);
		FUNC0(&ci, &ki, d, d, sc->sectorsize);
	}
	FUNC3(skey, sizeof skey);
	FUNC3(&ci, sizeof ci);
	FUNC3(&ki, sizeof ki);
}