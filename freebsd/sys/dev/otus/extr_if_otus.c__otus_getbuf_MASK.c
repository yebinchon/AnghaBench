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
 struct otus_data* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  next ; 

__attribute__((used)) static struct otus_data *
FUNC2(struct otus_softc *sc)
{
	struct otus_data *bf;

	bf = FUNC0(&sc->sc_tx_inactive);
	if (bf != NULL)
		FUNC1(&sc->sc_tx_inactive, next);
	else
		bf = NULL;
	/* XXX bzero? */
	return (bf);
}