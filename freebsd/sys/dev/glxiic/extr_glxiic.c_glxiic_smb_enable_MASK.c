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
typedef  int uint8_t ;
struct glxiic_softc {int /*<<< orphan*/  smb_res; int /*<<< orphan*/  sclfrq; } ;

/* Variables and functions */
 int /*<<< orphan*/  GLXIIC_FAST ; 
 int /*<<< orphan*/  GLXIIC_FASTEST ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GLXIIC_SLOW ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  GLXIIC_SMB_ADDR ; 
 int GLXIIC_SMB_ADDR_SAEN_BIT ; 
 int /*<<< orphan*/  GLXIIC_SMB_CTRL1 ; 
 int GLXIIC_SMB_CTRL1_GCMEN_BIT ; 
 int GLXIIC_SMB_CTRL1_INTEN_BIT ; 
 int GLXIIC_SMB_CTRL1_NMINTE_BIT ; 
 int GLXIIC_SMB_CTRL1_STASTRE_BIT ; 
 int /*<<< orphan*/  GLXIIC_SMB_CTRL2 ; 
 int GLXIIC_SMB_CTRL2_EN_BIT ; 
#define  IIC_FAST 131 
#define  IIC_FASTEST 130 
#define  IIC_SLOW 129 
#define  IIC_UNKNOWN 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct glxiic_softc *sc, uint8_t speed, uint8_t addr)
{
	uint8_t ctrl1;

	ctrl1 = 0;

	switch (speed) {
	case IIC_SLOW:
		sc->sclfrq = GLXIIC_SLOW;
		break;
	case IIC_FAST:
		sc->sclfrq = GLXIIC_FAST;
		break;
	case IIC_FASTEST:
		sc->sclfrq = GLXIIC_FASTEST;
		break;
	case IIC_UNKNOWN:
	default:
		/* Reuse last frequency. */
		break;
	}

	/* Set bus speed and enable controller. */
	FUNC3(sc->smb_res, GLXIIC_SMB_CTRL2,
	    FUNC0(sc->sclfrq) | GLXIIC_SMB_CTRL2_EN_BIT);

	if (addr != 0) {
		/* Enable new match and global call match interrupts. */
		ctrl1 |= GLXIIC_SMB_CTRL1_NMINTE_BIT |
			GLXIIC_SMB_CTRL1_GCMEN_BIT;
		FUNC2(sc->smb_res, GLXIIC_SMB_ADDR,
		    GLXIIC_SMB_ADDR_SAEN_BIT | FUNC1(addr));
	} else {
		FUNC2(sc->smb_res, GLXIIC_SMB_ADDR, 0);
	}

	/* Enable stall after start and interrupt. */
	FUNC2(sc->smb_res, GLXIIC_SMB_CTRL1,
	    ctrl1 | GLXIIC_SMB_CTRL1_STASTRE_BIT | GLXIIC_SMB_CTRL1_INTEN_BIT);
}