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
struct ifnet {struct enc_softc* if_softc; } ;
struct enc_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 struct enc_softc* V_enc_sc ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC2 (struct enc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*) ; 

__attribute__((used)) static void
FUNC5(struct ifnet *ifp)
{
	struct enc_softc *sc;

	sc = ifp->if_softc;
	FUNC0(sc == V_enc_sc, ("sc != ifp->if_softc"));

	FUNC1(ifp);
	FUNC3(ifp);
	FUNC4(ifp);
	FUNC2(sc, M_DEVBUF);
	V_enc_sc = NULL;
}