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
struct vtnet_txq {int dummy; } ;
struct vtnet_softc {int vtnet_max_vq_pairs; int /*<<< orphan*/ * vtnet_txqs; int /*<<< orphan*/ * vtnet_rxqs; } ;
struct vtnet_rxq {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 void* FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct vtnet_softc*,int) ; 
 int FUNC2 (struct vtnet_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct vtnet_softc*) ; 

__attribute__((used)) static int
FUNC4(struct vtnet_softc *sc)
{
	int i, npairs, error;

	npairs = sc->vtnet_max_vq_pairs;

	sc->vtnet_rxqs = FUNC0(sizeof(struct vtnet_rxq) * npairs, M_DEVBUF,
	    M_NOWAIT | M_ZERO);
	sc->vtnet_txqs = FUNC0(sizeof(struct vtnet_txq) * npairs, M_DEVBUF,
	    M_NOWAIT | M_ZERO);
	if (sc->vtnet_rxqs == NULL || sc->vtnet_txqs == NULL)
		return (ENOMEM);

	for (i = 0; i < npairs; i++) {
		error = FUNC1(sc, i);
		if (error)
			return (error);
		error = FUNC2(sc, i);
		if (error)
			return (error);
	}

	FUNC3(sc);

	return (0);
}