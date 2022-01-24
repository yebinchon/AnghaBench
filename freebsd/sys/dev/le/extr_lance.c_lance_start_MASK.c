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
struct lance_softc {int /*<<< orphan*/  (* sc_start_locked ) (struct lance_softc*) ;} ;
struct ifnet {struct lance_softc* if_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lance_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct lance_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct lance_softc*) ; 

__attribute__((used)) static void
FUNC3(struct ifnet *ifp)
{
	struct lance_softc *sc = ifp->if_softc;

	FUNC0(sc);
	(*sc->sc_start_locked)(sc);
	FUNC1(sc);
}