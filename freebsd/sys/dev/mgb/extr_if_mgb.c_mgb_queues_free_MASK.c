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
struct mgb_softc {int /*<<< orphan*/  tx_ring_data; int /*<<< orphan*/  rx_ring_data; } ;
struct mgb_ring_data {int dummy; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;

/* Variables and functions */
 struct mgb_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(if_ctx_t ctx)
{
	struct mgb_softc *sc;

	sc = FUNC0(ctx);

	FUNC1(&sc->rx_ring_data, 0, sizeof(struct mgb_ring_data));
	FUNC1(&sc->tx_ring_data, 0, sizeof(struct mgb_ring_data));
}