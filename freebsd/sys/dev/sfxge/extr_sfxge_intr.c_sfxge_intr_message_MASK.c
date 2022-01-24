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
struct sfxge_intr {scalar_t__ type; scalar_t__ state; } ;
struct sfxge_softc {struct sfxge_intr intr; int /*<<< orphan*/ * enp; } ;
struct sfxge_evq {unsigned int index; struct sfxge_softc* sc; } ;
typedef  int /*<<< orphan*/  efx_nic_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ EFX_INTR_MESSAGE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ SFXGE_INTR_STARTED ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (struct sfxge_evq*) ; 

__attribute__((used)) static void
FUNC6(void *arg)
{
	struct sfxge_evq *evq;
	struct sfxge_softc *sc;
	efx_nic_t *enp;
	struct sfxge_intr *intr;
	unsigned int index;
	boolean_t fatal;

	evq = (struct sfxge_evq *)arg;
	sc = evq->sc;
	enp = sc->enp;
	intr = &sc->intr;
	index = evq->index;

	FUNC0(intr != NULL, ("intr == NULL"));
	FUNC0(intr->type == EFX_INTR_MESSAGE,
	    ("intr->type != EFX_INTR_MESSAGE"));

	if (FUNC1(intr->state != SFXGE_INTR_STARTED))
		return;

	(void)FUNC4(enp, index, &fatal);

	if (fatal) {
		(void)FUNC2(enp);
		(void)FUNC3(enp);
		return;
	}

	(void)FUNC5(evq);
}