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
struct sc_pcminfo {struct aic_softc* sc; } ;
struct sc_chinfo {int run; struct sc_pcminfo* parent; } ;
struct aic_softc {int /*<<< orphan*/  lock; int /*<<< orphan*/  dma_size; int /*<<< orphan*/  buf_base; int /*<<< orphan*/  pos; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
#define  PCMTRIG_ABORT 130 
#define  PCMTRIG_START 129 
#define  PCMTRIG_STOP 128 
 int /*<<< orphan*/  FUNC0 (struct sc_pcminfo*) ; 
 int /*<<< orphan*/  FUNC1 (struct sc_pcminfo*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(kobj_t obj, void *data, int go)
{
	struct sc_pcminfo *scp;
	struct sc_chinfo *ch;
	struct aic_softc *sc;

	ch = data;
	scp = ch->parent;
	sc = scp->sc;

	FUNC3(sc->lock);

	switch (go) {
	case PCMTRIG_START:
		ch->run = 1;

		sc->pos = 0;

		FUNC0(scp);

		break;

	case PCMTRIG_STOP:
	case PCMTRIG_ABORT:
		ch->run = 0;

		FUNC1(scp);

		sc->pos = 0;

		FUNC2(sc->buf_base, sc->dma_size);

		break;
	}

	FUNC4(sc->lock);

	return (0);
}