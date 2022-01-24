#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct smu_softc {int /*<<< orphan*/  sc_mtx; TYPE_2__* sc_cur_cmd; int /*<<< orphan*/  sc_cmdq; scalar_t__ sc_u3; TYPE_1__* sc_cmd; int /*<<< orphan*/  sc_cmd_dmamap; int /*<<< orphan*/  sc_dmatag; } ;
typedef  void* device_t ;
struct TYPE_6__ {int /*<<< orphan*/  data; int /*<<< orphan*/  len; int /*<<< orphan*/  cmd; } ;
struct TYPE_5__ {int /*<<< orphan*/  data; int /*<<< orphan*/  len; int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int GPIO_DATA ; 
 int GPIO_DDR_OUTPUT ; 
 int GPIO_LEVEL_RO ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmd_q ; 
 struct smu_softc* FUNC3 (void*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int powerpc_pow_enabled ; 
 int /*<<< orphan*/  smu_doorbell ; 
 int /*<<< orphan*/  FUNC8 (void*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC10(void *xdev)
{
	device_t smu;
	struct smu_softc *sc;
	int doorbell_ack;

	smu = xdev;
	doorbell_ack = FUNC4(smu_doorbell);
	sc = FUNC3(smu);

	if (doorbell_ack != (GPIO_DDR_OUTPUT | GPIO_LEVEL_RO | GPIO_DATA)) 
		return;

	FUNC6(&sc->sc_mtx);

	if (sc->sc_cur_cmd == NULL)	/* spurious */
		goto done;

	/* Check result. First invalidate the cache again... */
	__asm __volatile("dcbf 0,%0; sync" :: "r"(sc->sc_cmd) : "memory");
	
	FUNC2(sc->sc_dmatag, sc->sc_cmd_dmamap, BUS_DMASYNC_POSTREAD);

	sc->sc_cur_cmd->cmd = sc->sc_cmd->cmd;
	sc->sc_cur_cmd->len = sc->sc_cmd->len;
	FUNC5(sc->sc_cur_cmd->data, sc->sc_cmd->data,
	    sizeof(sc->sc_cmd->data));
	FUNC9(sc->sc_cur_cmd);
	sc->sc_cur_cmd = NULL;
	if (sc->sc_u3)
		powerpc_pow_enabled = 1;

    done:
	/* Queue next command if one is pending */
	if (FUNC0(&sc->sc_cmdq) != NULL) {
		sc->sc_cur_cmd = FUNC0(&sc->sc_cmdq);
		FUNC1(&sc->sc_cmdq, cmd_q);
		FUNC8(smu, sc->sc_cur_cmd);
	}

	FUNC7(&sc->sc_mtx);
}