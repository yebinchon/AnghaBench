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
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct sfxge_softc {struct sfxge_evq** evq; struct sfxge_rxq** rxq; } ;
struct sfxge_rxq {unsigned int index; } ;
struct sfxge_evq {scalar_t__ init_state; int /*<<< orphan*/  common; struct sfxge_softc* sc; } ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sfxge_evq*) ; 
 scalar_t__ SFXGE_EVQ_STARTED ; 
 int /*<<< orphan*/  SFXGE_SW_EV_RX_QFLUSH_FAILED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct sfxge_rxq*) ; 

__attribute__((used)) static boolean_t
FUNC4(void *arg, uint32_t rxq_index)
{
	struct sfxge_evq *evq;
	struct sfxge_softc *sc;
	struct sfxge_rxq *rxq;
	unsigned int index;
	uint16_t magic;

	evq = (struct sfxge_evq *)arg;
	FUNC1(evq);

	sc = evq->sc;
	rxq = sc->rxq[rxq_index];

	FUNC0(rxq != NULL, ("rxq == NULL"));

	/* Resend a software event on the correct queue */
	index = rxq->index;
	evq = sc->evq[index];
	magic = FUNC3(SFXGE_SW_EV_RX_QFLUSH_FAILED, rxq);

	FUNC0(evq->init_state == SFXGE_EVQ_STARTED,
	    ("evq not started"));
	FUNC2(evq->common, magic);

	return (B_FALSE);
}