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
struct udl_softc {int /*<<< orphan*/ * sc_xfer; int /*<<< orphan*/  sc_cmd_buf_pending; int /*<<< orphan*/  sc_cmd_buf_free; scalar_t__ sc_gone; } ;
struct udl_cmd_buf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct udl_cmd_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UDL_BULK_CMD_EOC ; 
 int /*<<< orphan*/  UDL_BULK_SOC ; 
 size_t UDL_BULK_WRITE_0 ; 
 size_t UDL_BULK_WRITE_1 ; 
 int /*<<< orphan*/  FUNC1 (struct udl_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct udl_softc*) ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/  FUNC3 (struct udl_cmd_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct udl_softc *sc, struct udl_cmd_buf *cb)
{
	FUNC1(sc);
	if (sc->sc_gone) {
		FUNC0(&sc->sc_cmd_buf_free, cb, entry);
	} else {
		/* mark end of command stack */
		FUNC3(cb, UDL_BULK_SOC);
		FUNC3(cb, UDL_BULK_CMD_EOC);

		FUNC0(&sc->sc_cmd_buf_pending, cb, entry);
		FUNC4(sc->sc_xfer[UDL_BULK_WRITE_0]);
		FUNC4(sc->sc_xfer[UDL_BULK_WRITE_1]);
	}
	FUNC2(sc);
}