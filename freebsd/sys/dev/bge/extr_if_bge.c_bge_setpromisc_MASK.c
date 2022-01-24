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
struct bge_softc {int /*<<< orphan*/  bge_ifp; } ;
typedef  int /*<<< orphan*/  if_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bge_softc*) ; 
 int /*<<< orphan*/  BGE_RXMODE_RX_PROMISC ; 
 int /*<<< orphan*/  BGE_RX_MODE ; 
 int /*<<< orphan*/  FUNC2 (struct bge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int IFF_PROMISC ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct bge_softc *sc)
{
	if_t ifp;

	FUNC1(sc);

	ifp = sc->bge_ifp;

	/* Enable or disable promiscuous mode as needed. */
	if (FUNC3(ifp) & IFF_PROMISC)
		FUNC2(sc, BGE_RX_MODE, BGE_RXMODE_RX_PROMISC);
	else
		FUNC0(sc, BGE_RX_MODE, BGE_RXMODE_RX_PROMISC);
}