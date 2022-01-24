#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int cis1_major; int cis1_minor; scalar_t__ error; int /*<<< orphan*/  pf_head; int /*<<< orphan*/  product; int /*<<< orphan*/  manufacturer; int /*<<< orphan*/ ** cis1_info; } ;
struct pccard_softc {int /*<<< orphan*/  dev; TYPE_1__ card; } ;
struct cis_state {TYPE_1__* card; int /*<<< orphan*/ * pf; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCMCIA_PRODUCT_INVALID ; 
 int /*<<< orphan*/  PCMCIA_VENDOR_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cis_state*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  pccard_parse_cis_tuple ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cis_state*) ; 

void
FUNC5(struct pccard_softc *sc)
{
	struct cis_state state;

	FUNC1(&state, sizeof state);
	state.card = &sc->card;
	state.card->error = 0;
	state.card->cis1_major = -1;
	state.card->cis1_minor = -1;
	state.card->cis1_info[0] = NULL;
	state.card->cis1_info[1] = NULL;
	state.card->cis1_info[2] = NULL;
	state.card->cis1_info[3] = NULL;
	state.card->manufacturer = PCMCIA_VENDOR_INVALID;
	state.card->product = PCMCIA_PRODUCT_INVALID;
	FUNC0(&state.card->pf_head);
	state.pf = NULL;

	/*
	 * XXX The following shouldn't be needed, but some slow cards
	 * XXX seem to need it still.  Need to investigate if there's
	 * XXX a way to tell if the card is 'ready' or not rather than
	 * XXX sleeping like this.  We're called just after the power
	 * XXX up of the socket.  The standard timing diagrams don't
	 * XXX seem to indicate that a delay is required.  The old
	 * XXX delay was 1s.  This delay is .1s.
	 */
	FUNC3("pccard", hz / 10);
	if (FUNC4(FUNC2(sc->dev), sc->dev,
	    pccard_parse_cis_tuple, &state) == -1)
		state.card->error++;
}