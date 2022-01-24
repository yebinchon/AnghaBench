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
struct udl_softc {int sc_power_save; } ;
struct udl_cmd_buf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int EAGAIN ; 
 int /*<<< orphan*/  UDL_REG_SCREEN ; 
 int UDL_REG_SCREEN_OFF ; 
 int UDL_REG_SCREEN_ON ; 
 int /*<<< orphan*/  UDL_REG_SYNC ; 
 struct udl_cmd_buf* FUNC1 (struct udl_softc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct udl_softc*,struct udl_cmd_buf*) ; 
 int /*<<< orphan*/  FUNC3 (struct udl_cmd_buf*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(struct udl_softc *sc, int on, int flags)
{
	struct udl_cmd_buf *cb;

	/* get new buffer */
	cb = FUNC1(sc, flags);
	if (cb == NULL)
		return (EAGAIN);

	FUNC0("screen %s\n", on ? "ON" : "OFF");

	sc->sc_power_save = on ? 0 : 1;

	if (on)
		FUNC3(cb, UDL_REG_SCREEN, UDL_REG_SCREEN_ON);
	else
		FUNC3(cb, UDL_REG_SCREEN, UDL_REG_SCREEN_OFF);

	FUNC3(cb, UDL_REG_SYNC, 0xff);
	FUNC2(sc, cb);
	return (0);
}