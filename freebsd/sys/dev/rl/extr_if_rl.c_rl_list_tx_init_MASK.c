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
typedef  int /*<<< orphan*/  uint32_t ;
struct rl_chain_data {scalar_t__ last_tx; scalar_t__ cur_tx; int /*<<< orphan*/ ** rl_tx_chain; } ;
struct rl_softc {struct rl_chain_data rl_cdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rl_softc*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rl_softc*) ; 
 scalar_t__ RL_TXADDR0 ; 
 int RL_TX_LIST_CNT ; 

__attribute__((used)) static int
FUNC2(struct rl_softc *sc)
{
	struct rl_chain_data	*cd;
	int			i;

	FUNC1(sc);

	cd = &sc->rl_cdata;
	for (i = 0; i < RL_TX_LIST_CNT; i++) {
		cd->rl_tx_chain[i] = NULL;
		FUNC0(sc,
		    RL_TXADDR0 + (i * sizeof(uint32_t)), 0x0000000);
	}

	sc->rl_cdata.cur_tx = 0;
	sc->rl_cdata.last_tx = 0;

	return (0);
}