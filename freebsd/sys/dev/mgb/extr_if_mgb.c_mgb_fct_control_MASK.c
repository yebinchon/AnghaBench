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
typedef  enum mgb_fct_cmd { ____Placeholder_mgb_fct_cmd } mgb_fct_cmd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mgb_softc*,int,int /*<<< orphan*/ ) ; 
#define  FCT_DISABLE 130 
#define  FCT_ENABLE 129 
#define  FCT_RESET 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct mgb_softc*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct mgb_softc *sc, int reg, int channel,
    enum mgb_fct_cmd cmd)
{

	switch (cmd) {
	case FCT_RESET:
		FUNC0(sc, reg, FUNC3(channel));
		return FUNC4(sc, reg, 0, FUNC3(channel));
	case FCT_ENABLE:
		FUNC0(sc, reg, FUNC2(channel));
		return (0);
	case FCT_DISABLE:
		FUNC0(sc, reg, FUNC1(channel));
		return FUNC4(sc, reg, 0, FUNC2(channel));
	}
}