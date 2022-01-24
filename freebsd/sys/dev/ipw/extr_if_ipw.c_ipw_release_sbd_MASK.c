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
struct ipw_softc {int /*<<< orphan*/  sc_tx_timer; int /*<<< orphan*/  free_sbuf; int /*<<< orphan*/  txbuf_dmat; int /*<<< orphan*/  free_shdr; int /*<<< orphan*/  hdr_dmat; int /*<<< orphan*/  cmd_map; int /*<<< orphan*/  cmd_dmat; } ;
struct ipw_soft_hdr {int /*<<< orphan*/  m; int /*<<< orphan*/  ni; int /*<<< orphan*/  map; } ;
struct ipw_soft_buf {int /*<<< orphan*/  m; int /*<<< orphan*/  ni; int /*<<< orphan*/  map; } ;
struct ipw_soft_bd {int type; struct ipw_soft_hdr* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
#define  IPW_SBD_TYPE_COMMAND 130 
#define  IPW_SBD_TYPE_DATA 129 
#define  IPW_SBD_TYPE_HEADER 128 
 int IPW_SBD_TYPE_NOASSOC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ipw_soft_hdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  next ; 

__attribute__((used)) static void
FUNC4(struct ipw_softc *sc, struct ipw_soft_bd *sbd)
{
	struct ipw_soft_hdr *shdr;
	struct ipw_soft_buf *sbuf;

	switch (sbd->type) {
	case IPW_SBD_TYPE_COMMAND:
		FUNC1(sc->cmd_dmat, sc->cmd_map,
		    BUS_DMASYNC_POSTWRITE);
		FUNC2(sc->cmd_dmat, sc->cmd_map);
		break;

	case IPW_SBD_TYPE_HEADER:
		shdr = sbd->priv;
		FUNC1(sc->hdr_dmat, shdr->map, BUS_DMASYNC_POSTWRITE);
		FUNC2(sc->hdr_dmat, shdr->map);
		FUNC0(&sc->free_shdr, shdr, next);
		break;

	case IPW_SBD_TYPE_DATA:
		sbuf = sbd->priv;
		FUNC1(sc->txbuf_dmat, sbuf->map,
		    BUS_DMASYNC_POSTWRITE);
		FUNC2(sc->txbuf_dmat, sbuf->map);
		FUNC0(&sc->free_sbuf, sbuf, next);

		FUNC3(sbuf->ni, sbuf->m, 0/*XXX*/);

		sc->sc_tx_timer = 0;
		break;
	}

	sbd->type = IPW_SBD_TYPE_NOASSOC;
}