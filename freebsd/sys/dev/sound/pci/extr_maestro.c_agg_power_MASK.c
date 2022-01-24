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
typedef  int u_int8_t ;
struct agg_info {int curpwr; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_REG_POWER ; 
 int FUNC0 (struct agg_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct agg_info*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
#define  PCI_POWERSTATE_D0 131 
#define  PCI_POWERSTATE_D1 130 
#define  PCI_POWERSTATE_D2 129 
#define  PCI_POWERSTATE_D3 128 
 int /*<<< orphan*/  PORT_HOSTINT_CTRL ; 
 int /*<<< orphan*/  PORT_HOSTINT_STAT ; 
 int /*<<< orphan*/  PORT_RINGBUS_CTRL ; 
 int RINGBUS_CTRL_ACLINK_ENABLED ; 
 int RINGBUS_CTRL_RINGBUS_ENABLED ; 
 int /*<<< orphan*/  FUNC3 (struct agg_info*) ; 
 int FUNC4 (struct agg_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct agg_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC8 (struct agg_info*) ; 

__attribute__((used)) static void
FUNC9(struct agg_info *ess, int status)
{
	u_int8_t lastpwr;

	lastpwr = ess->curpwr;
	if (lastpwr == status)
		return;

	switch (status) {
	case PCI_POWERSTATE_D0:
	case PCI_POWERSTATE_D1:
		switch (lastpwr) {
		case PCI_POWERSTATE_D2:
			FUNC7(ess->dev, status);
			/* Turn on PCM-related parts. */
			FUNC5(ess, AC97_REG_POWER, 0);
			FUNC2(100);
#if 0
			if ((agg_rdcodec(ess, AC97_REG_POWER) & 3) != 3)
				device_printf(ess->dev,
				    "warning: codec not ready.\n");
#endif
			FUNC1(ess, PORT_RINGBUS_CTRL,
			       (FUNC0(ess, PORT_RINGBUS_CTRL, 4)
				& ~RINGBUS_CTRL_ACLINK_ENABLED)
			       | RINGBUS_CTRL_RINGBUS_ENABLED, 4);
			FUNC2(50);
			FUNC1(ess, PORT_RINGBUS_CTRL,
			       FUNC0(ess, PORT_RINGBUS_CTRL, 4)
			       | RINGBUS_CTRL_ACLINK_ENABLED, 4);
			break;
		case PCI_POWERSTATE_D3:
			/* Initialize. */
			FUNC7(ess->dev, PCI_POWERSTATE_D0);
			FUNC2(100);
			FUNC3(ess);
			/* FALLTHROUGH */
		case PCI_POWERSTATE_D0:
		case PCI_POWERSTATE_D1:
			FUNC7(ess->dev, status);
			break;
		}
		break;
	case PCI_POWERSTATE_D2:
		switch (lastpwr) {
		case PCI_POWERSTATE_D3:
			/* Initialize. */
			FUNC7(ess->dev, PCI_POWERSTATE_D0);
			FUNC2(100);
			FUNC3(ess);
			/* FALLTHROUGH */
		case PCI_POWERSTATE_D0:
		case PCI_POWERSTATE_D1:
			/* Turn off PCM-related parts. */
			FUNC1(ess, PORT_RINGBUS_CTRL,
			       FUNC0(ess, PORT_RINGBUS_CTRL, 4)
			       & ~RINGBUS_CTRL_RINGBUS_ENABLED, 4);
			FUNC2(100);
			FUNC5(ess, AC97_REG_POWER, 0x300);
			FUNC2(100);
			break;
		}
		FUNC7(ess->dev, status);
		break;
	case PCI_POWERSTATE_D3:
		/* Entirely power down. */
		FUNC5(ess, AC97_REG_POWER, 0xdf00);
		FUNC2(100);
		FUNC1(ess, PORT_RINGBUS_CTRL, 0, 4);
		/*DELAY(1);*/
		if (lastpwr != PCI_POWERSTATE_D2)
			FUNC8(ess);
		FUNC1(ess, PORT_HOSTINT_CTRL, 0, 2);
		FUNC1(ess, PORT_HOSTINT_STAT, 0xff, 1);
		FUNC7(ess->dev, status);
		break;
	default:
		/* Invalid power state; let it ignored. */
		status = lastpwr;
		break;
	}

	ess->curpwr = status;
}