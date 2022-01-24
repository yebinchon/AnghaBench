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
typedef  scalar_t__ u_int ;
struct fire_softc {int /*<<< orphan*/  sc_ign; } ;
struct fire_msiqarg {int dummy; } ;
struct fire_icarg {void* fica_clr; void* fica_map; struct fire_softc* fica_sc; } ;
typedef  void* bus_addr_t ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 scalar_t__ FO_EQ_FIRST_INO ; 
 scalar_t__ FO_EQ_LAST_INO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 scalar_t__ FUNC1 (struct fire_softc*,scalar_t__,void**,void**) ; 
 int /*<<< orphan*/  fire_ic ; 
 int /*<<< orphan*/  FUNC2 (struct fire_icarg*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct fire_icarg*) ; 
 struct fire_icarg* FUNC4 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(struct fire_softc *sc, u_int ino)
{
	struct fire_icarg *fica;
	bus_addr_t intrclr, intrmap;
	int error;

	if (FUNC1(sc, ino, &intrmap, &intrclr) == 0)
		return (ENXIO);
	fica = FUNC4((ino >= FO_EQ_FIRST_INO && ino <= FO_EQ_LAST_INO) ?
	    sizeof(struct fire_msiqarg) : sizeof(struct fire_icarg), M_DEVBUF,
	    M_NOWAIT | M_ZERO);
	if (fica == NULL)
		return (ENOMEM);
	fica->fica_sc = sc;
	fica->fica_map = intrmap;
	fica->fica_clr = intrclr;
	error = (FUNC3(FUNC0(sc->sc_ign, ino),
	    &fire_ic, fica));
	if (error != 0)
		FUNC2(fica, M_DEVBUF);
	return (error);
}