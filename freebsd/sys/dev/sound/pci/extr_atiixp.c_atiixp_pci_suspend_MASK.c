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
typedef  int uint32_t ;
struct TYPE_2__ {int flags; } ;
struct atiixp_info {TYPE_1__ rch; TYPE_1__ pch; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ATI_IXP_CHN_RUNNING ; 
 int ATI_IXP_CHN_SUSPEND ; 
 int /*<<< orphan*/  ATI_REG_CMD ; 
 int ATI_REG_CMD_AC_RESET ; 
 int ATI_REG_CMD_POWERDOWN ; 
 int /*<<< orphan*/  PCMTRIG_STOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct atiixp_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct atiixp_info*) ; 
 int FUNC3 (struct atiixp_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct atiixp_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct atiixp_info*,int /*<<< orphan*/ ,int) ; 
 struct atiixp_info* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct atiixp_info *sc = FUNC6(dev);
	uint32_t value;

	/* quickly disable interrupts and save channels active state */
	FUNC2(sc);
	FUNC1(sc);
	FUNC4(sc);

	/* stop everything */
	if (sc->pch.flags & ATI_IXP_CHN_RUNNING) {
		FUNC0(NULL, &sc->pch, PCMTRIG_STOP);
		sc->pch.flags |= ATI_IXP_CHN_SUSPEND;
	}
	if (sc->rch.flags & ATI_IXP_CHN_RUNNING) {
		FUNC0(NULL, &sc->rch, PCMTRIG_STOP);
		sc->rch.flags |= ATI_IXP_CHN_SUSPEND;
	}

	/* power down aclink and pci bus */
	FUNC2(sc);
	value = FUNC3(sc, ATI_REG_CMD);
	value |= ATI_REG_CMD_POWERDOWN | ATI_REG_CMD_AC_RESET;
	FUNC5(sc, ATI_REG_CMD, ATI_REG_CMD_POWERDOWN);
	FUNC4(sc);

	return (0);
}