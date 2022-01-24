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
struct uath_tx_desc {scalar_t__ msgid; void* flags; void* connid; void* txqid; void* type; void* msglen; } ;
struct uath_softc {int sc_debug; int sc_tx_timer; int /*<<< orphan*/ * sc_xfer; int /*<<< orphan*/  sc_tx_pending; int /*<<< orphan*/  sc_msgid; } ;
struct uath_data {int buflen; scalar_t__ buf; int /*<<< orphan*/ * ni; int /*<<< orphan*/ * m; } ;
struct uath_chunk {int /*<<< orphan*/  length; int /*<<< orphan*/  flags; scalar_t__ seqnum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uath_softc*,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct uath_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uath_softc*) ; 
 size_t UATH_BULK_TX ; 
 int /*<<< orphan*/  UATH_CFLAGS_FINAL ; 
 int UATH_DEBUG_CMDS ; 
 int UATH_DEBUG_CMDS_DUMP ; 
 int /*<<< orphan*/  UATH_DEBUG_RESET ; 
 int /*<<< orphan*/  FUNC3 (struct uath_softc*,int /*<<< orphan*/ ) ; 
 int WDCMSG_FLUSH ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct uath_tx_desc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  st_tx_pending ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int,char) ; 
 struct uath_data* FUNC8 (struct uath_softc*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(struct uath_softc *sc)
{
	struct uath_data *data;
	struct uath_chunk *chunk;
	struct uath_tx_desc *desc;

	FUNC2(sc);

	data = FUNC8(sc);
	if (data == NULL)
		return (ENOBUFS);
	data->buflen = sizeof(struct uath_chunk) + sizeof(struct uath_tx_desc);
	data->m = NULL;
	data->ni = NULL;
	chunk = (struct uath_chunk *)data->buf;
	desc = (struct uath_tx_desc *)(chunk + 1);

	/* one chunk only */
	chunk->seqnum = 0;
	chunk->flags = UATH_CFLAGS_FINAL;
	chunk->length = FUNC4(sizeof (struct uath_tx_desc));

	FUNC6(desc, 0, sizeof(struct uath_tx_desc));
	desc->msglen = FUNC5(sizeof(struct uath_tx_desc));
	desc->msgid  = (sc->sc_msgid++) + 1; /* don't care about endianness */
	desc->type   = FUNC5(WDCMSG_FLUSH);
	desc->txqid  = FUNC5(0);
	desc->connid = FUNC5(0);
	desc->flags  = FUNC5(0);

#ifdef UATH_DEBUG
	if (sc->sc_debug & UATH_DEBUG_CMDS) {
		DPRINTF(sc, UATH_DEBUG_RESET, "send flush ix %d\n",
		    desc->msgid);
		if (sc->sc_debug & UATH_DEBUG_CMDS_DUMP)
			uath_dump_cmd(data->buf, data->buflen, '+');
	}
#endif

	FUNC1(&sc->sc_tx_pending, data, next);
	FUNC3(sc, st_tx_pending);
	sc->sc_tx_timer = 5;
	FUNC9(sc->sc_xfer[UATH_BULK_TX]);

	return (0);
}