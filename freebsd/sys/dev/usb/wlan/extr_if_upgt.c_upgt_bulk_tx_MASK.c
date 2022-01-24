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
struct upgt_softc {int /*<<< orphan*/ * sc_xfer; int /*<<< orphan*/  sc_tx_pending; } ;
struct upgt_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct upgt_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct upgt_softc*) ; 
 size_t UPGT_BULK_TX ; 
 int /*<<< orphan*/  FUNC2 (struct upgt_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  st_tx_pending ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct upgt_softc *sc, struct upgt_data *data)
{

	FUNC1(sc);

	FUNC0(&sc->sc_tx_pending, data, next);
	FUNC2(sc, st_tx_pending);
	FUNC3(sc->sc_xfer[UPGT_BULK_TX]);
}