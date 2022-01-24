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
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct g_bde_work {scalar_t__ length; int ko; scalar_t__ offset; TYPE_2__* ksp; TYPE_1__* sp; scalar_t__ data; struct g_bde_softc* softc; } ;
struct g_bde_softc {scalar_t__ sectorsize; } ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  keyInstance ;
typedef  int /*<<< orphan*/  cipherInstance ;
struct TYPE_4__ {scalar_t__ data; } ;
struct TYPE_3__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DIR_ENCRYPT ; 
 int /*<<< orphan*/  G_BDE_SKEYBITS ; 
 int G_BDE_SKEYLEN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct g_bde_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

void
FUNC6(struct g_bde_work *wp)
{
	u_char *s, *d;
	struct g_bde_softc *sc;
	u_int n;
	off_t o;
	u_char skey[G_BDE_SKEYLEN];
	keyInstance ki;
	cipherInstance ci;

	sc = wp->softc;
	FUNC1(&ci);
	o = 0;
	for (n = 0; o < wp->length; n++, o += sc->sectorsize) {

		s = (u_char *)wp->data + o;
		d = (u_char *)wp->sp->data + o;
		FUNC3(skey, sizeof skey, 0);
		FUNC2(&ki, DIR_ENCRYPT, G_BDE_SKEYBITS, skey);
		FUNC0(&ci, &ki, s, d, sc->sectorsize);

		d = (u_char *)wp->ksp->data + wp->ko + n * G_BDE_SKEYLEN;
		FUNC5(sc, &ki, DIR_ENCRYPT, wp->offset + o);
		FUNC0(&ci, &ki, skey, d, sizeof skey);
		FUNC4(skey, sizeof skey);
	}
	FUNC4(skey, sizeof skey);
	FUNC4(&ci, sizeof ci);
	FUNC4(&ki, sizeof ki);
}