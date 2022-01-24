#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int16_t ;
typedef  TYPE_1__* bt3c_softc_p ;
struct TYPE_7__ {int status; int /*<<< orphan*/ * ith; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 char* NG_BT3C_NODE_TYPE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(void *context)
{
	bt3c_softc_p	sc = (bt3c_softc_p) context;
	u_int16_t	control, status;

	if (sc == NULL || sc->ith == NULL) {
		FUNC7("%s: bogus interrupt\n", NG_BT3C_NODE_TYPE);
		return;
	}

	FUNC3(sc, control);
	if ((control & 0x80) == 0)
		return;

	FUNC2(sc, 0x7001, status);
	FUNC0(sc->dev, "control=%#x, status=%#x\n", control, status);

	if ((status & 0xff) == 0x7f || (status & 0xff) == 0xff) {
		FUNC1(sc->dev, "Strange status=%#x\n", status);
		return;
	}

	/* Receive complete */
	if (status & 0x0001)
		FUNC4(sc);

	/* Record status and schedule SWI */
	sc->status |= status;
	FUNC8(sc->ith, 0);

	/* Complete interrupt */
	FUNC5(sc, 0x7001, 0x0000);
	FUNC6(sc, control);
}