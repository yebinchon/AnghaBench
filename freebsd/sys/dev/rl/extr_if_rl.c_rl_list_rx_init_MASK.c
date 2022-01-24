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
struct TYPE_2__ {int /*<<< orphan*/  rl_rx_dmamap; int /*<<< orphan*/  rl_tx_tag; int /*<<< orphan*/  rl_rx_buf_ptr; } ;
struct rl_softc {TYPE_1__ rl_cdata; } ;

/* Variables and functions */
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  FUNC0 (struct rl_softc*) ; 
 scalar_t__ RL_RXBUFLEN ; 
 scalar_t__ RL_RX_8139_BUF_GUARD_SZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC3(struct rl_softc *sc)
{

	FUNC0(sc);

	FUNC2(sc->rl_cdata.rl_rx_buf_ptr,
	    RL_RXBUFLEN + RL_RX_8139_BUF_GUARD_SZ);
	FUNC1(sc->rl_cdata.rl_tx_tag, sc->rl_cdata.rl_rx_dmamap,
	    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);

	return (0);
}