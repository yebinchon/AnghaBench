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
struct mgb_softc {int dummy; } ;
typedef  enum mgb_dmac_cmd { ____Placeholder_mgb_dmac_cmd } mgb_dmac_cmd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mgb_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  DMAC_RESET 130 
#define  DMAC_START 129 
#define  DMAC_STOP 128 
 int /*<<< orphan*/  MGB_DMAC_CMD ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int FUNC4 (struct mgb_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct mgb_softc *sc, int start, int channel,
    enum mgb_dmac_cmd cmd)
{
	int error = 0;

	switch (cmd) {
	case DMAC_RESET:
		FUNC0(sc, MGB_DMAC_CMD,
		    FUNC1(start, channel));
		error = FUNC4(sc, MGB_DMAC_CMD, 0,
		    FUNC1(start, channel));
		break;

	case DMAC_START:
		/*
		 * NOTE: this simplifies the logic, since it will never
		 * try to start in STOP_PENDING, but it also increases work.
		 */
		error = FUNC5(sc, start, channel, DMAC_STOP);
		if (error != 0)
			return error;
		FUNC0(sc, MGB_DMAC_CMD,
		    FUNC2(start, channel));
		break;

	case DMAC_STOP:
		FUNC0(sc, MGB_DMAC_CMD,
		    FUNC3(start, channel));
		error = FUNC4(sc, MGB_DMAC_CMD,
		    FUNC3(start, channel),
		    FUNC2(start, channel));
		break;
	}
	return error;
}