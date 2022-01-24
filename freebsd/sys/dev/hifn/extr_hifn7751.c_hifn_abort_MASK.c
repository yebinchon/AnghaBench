#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int8_t ;
struct hifn_softc {int sc_resk; int sc_resu; int /*<<< orphan*/  sc_dmat; struct hifn_command** sc_hifn_commands; struct hifn_dma* sc_dma; } ;
struct hifn_dma {int /*<<< orphan*/ ** result_bufs; TYPE_1__* resr; } ;
struct hifn_command {int base_masks; scalar_t__ src_map; scalar_t__ dst_map; scalar_t__ src_m; scalar_t__ dst_m; struct cryptop* crp; } ;
struct cryptop {scalar_t__ crp_etype; scalar_t__ crp_buf; } ;
typedef  scalar_t__ caddr_t ;
struct TYPE_4__ {int /*<<< orphan*/  hst_opackets; } ;
struct TYPE_3__ {int l; } ;

/* Variables and functions */
 int BUS_DMASYNC_POSTREAD ; 
 int BUS_DMASYNC_POSTWRITE ; 
 scalar_t__ EAGAIN ; 
 void* ENOMEM ; 
 int HIFN_BASE_CMD_MAC ; 
 int HIFN_D_RES_RSIZE ; 
 int /*<<< orphan*/  HIFN_D_VALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct cryptop*) ; 
 int /*<<< orphan*/  FUNC5 (struct hifn_command*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hifn_softc*,struct hifn_command*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct hifn_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct hifn_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct hifn_softc*,int) ; 
 TYPE_2__ hifnstats ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 

__attribute__((used)) static void
FUNC12(struct hifn_softc *sc)
{
	struct hifn_dma *dma = sc->sc_dma;
	struct hifn_command *cmd;
	struct cryptop *crp;
	int i, u;

	i = sc->sc_resk; u = sc->sc_resu;
	while (u != 0) {
		cmd = sc->sc_hifn_commands[i];
		FUNC0(cmd != NULL, ("hifn_abort: null command slot %u", i));
		sc->sc_hifn_commands[i] = NULL;
		crp = cmd->crp;

		if ((dma->resr[i].l & FUNC10(HIFN_D_VALID)) == 0) {
			/* Salvage what we can. */
			u_int8_t *macbuf;

			if (cmd->base_masks & HIFN_BASE_CMD_MAC) {
				macbuf = dma->result_bufs[i];
				macbuf += 12;
			} else
				macbuf = NULL;
			hifnstats.hst_opackets++;
			FUNC6(sc, cmd, macbuf);
		} else {
			if (cmd->src_map == cmd->dst_map) {
				FUNC2(sc->sc_dmat, cmd->src_map,
				    BUS_DMASYNC_POSTREAD|BUS_DMASYNC_POSTWRITE);
			} else {
				FUNC2(sc->sc_dmat, cmd->src_map,
				    BUS_DMASYNC_POSTWRITE);
				FUNC2(sc->sc_dmat, cmd->dst_map,
				    BUS_DMASYNC_POSTREAD);
			}

			if (cmd->src_m != cmd->dst_m) {
				FUNC11(cmd->src_m);
				crp->crp_buf = (caddr_t)cmd->dst_m;
			}

			/* non-shared buffers cannot be restarted */
			if (cmd->src_map != cmd->dst_map) {
				/*
				 * XXX should be EAGAIN, delayed until
				 * after the reset.
				 */
				crp->crp_etype = ENOMEM;
				FUNC3(sc->sc_dmat, cmd->dst_map);
				FUNC1(sc->sc_dmat, cmd->dst_map);
			} else
				crp->crp_etype = ENOMEM;

			FUNC3(sc->sc_dmat, cmd->src_map);
			FUNC1(sc->sc_dmat, cmd->src_map);

			FUNC5(cmd, M_DEVBUF);
			if (crp->crp_etype != EAGAIN)
				FUNC4(crp);
		}

		if (++i == HIFN_D_RES_RSIZE)
			i = 0;
		u--;
	}
	sc->sc_resk = i; sc->sc_resu = u;

	FUNC9(sc, 1);
	FUNC7(sc);
	FUNC8(sc);
}