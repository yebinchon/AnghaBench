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
typedef  int u_int32_t ;
struct alpm_softc {int /*<<< orphan*/ * smbus; int /*<<< orphan*/  lock; int /*<<< orphan*/ * res; int /*<<< orphan*/  smbsh; int /*<<< orphan*/  smbst; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATPC ; 
 int ATPC_SMBCTRL ; 
 int EINVAL ; 
 int ENXIO ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int SMBBA ; 
#define  SMBCLOCK_111K 133 
#define  SMBCLOCK_149K 132 
#define  SMBCLOCK_223K 131 
#define  SMBCLOCK_37K 130 
#define  SMBCLOCK_55K 129 
#define  SMBCLOCK_74K 128 
 int /*<<< orphan*/  SMBHCBC ; 
 int SMBHCBC_CLOCK ; 
 int /*<<< orphan*/  SMBHSI ; 
 int SMBHSI_HOST ; 
 int SMBHSI_SLAVE ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 scalar_t__ alpm_debug ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct alpm_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC13(device_t dev)
{
	int rid;
	u_int32_t l;
	struct alpm_softc *alpm;

	alpm = FUNC5(dev);

	/* Unlock SMBIO base register access */
	l = FUNC8(dev, ATPC, 1);
	FUNC9(dev, ATPC, l & ~ATPC_SMBCTRL, 1);

	/*
	 * XX linux sets clock to 74k, should we?
	l = pci_read_config(dev, SMBHCBC, 1);
	l &= 0x1f;
	l |= SMBCLOCK_74K;
	pci_write_config(dev, SMBHCBC, l, 1);
	 */

	if (bootverbose || alpm_debug) {
		l = FUNC8(dev, SMBHSI, 1);
		FUNC6(dev, "%s/%s",
			(l & SMBHSI_HOST) ? "host":"nohost",
			(l & SMBHSI_SLAVE) ? "slave":"noslave");

		l = FUNC8(dev, SMBHCBC, 1);
		switch (l & SMBHCBC_CLOCK) {
		case SMBCLOCK_149K:
			FUNC10(" 149K");
			break;
		case SMBCLOCK_74K:
			FUNC10(" 74K");
			break;
		case SMBCLOCK_37K:
			FUNC10(" 37K");
			break;
		case SMBCLOCK_223K:
			FUNC10(" 223K");
			break;
		case SMBCLOCK_111K:
			FUNC10(" 111K");
			break;
		case SMBCLOCK_55K:
			FUNC10(" 55K");
			break;
		default:
			FUNC10("unknown");
			break;
		}
		FUNC10("\n");
	}

	rid = SMBBA;
	alpm->res = FUNC1(dev, SYS_RES_IOPORT, &rid,
	    RF_ACTIVE);

	if (alpm->res == NULL) {
		FUNC6(dev,"Could not allocate Bus space\n");
		return (ENXIO);
	}
	alpm->smbst = FUNC12(alpm->res);
	alpm->smbsh = FUNC11(alpm->res);
	FUNC7(&alpm->lock, FUNC4(dev), "alpm", MTX_DEF);

	/* attach the smbus */
	alpm->smbus = FUNC3(dev, "smbus", -1);
	if (alpm->smbus == NULL) {
		FUNC0(dev);
		return (EINVAL);
	}
	FUNC2(dev);

	return (0);
}