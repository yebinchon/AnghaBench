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
struct otus_softc {int /*<<< orphan*/  sc_tx_inactive; } ;
struct otus_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct otus_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct otus_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  next ; 

__attribute__((used)) static void
FUNC2(struct otus_softc *sc, struct otus_data *bf)
{

	FUNC0(sc);
	FUNC1(&sc->sc_tx_inactive, bf, next);
}