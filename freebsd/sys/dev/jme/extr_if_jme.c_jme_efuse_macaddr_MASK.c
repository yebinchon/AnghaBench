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
typedef  int uint32_t ;
struct jme_softc {int /*<<< orphan*/  jme_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EFUSE_CTL1_AUTOLAOD_DONE ; 
 int EFUSE_CTL1_AUTOLOAD_ERR ; 
 int EFUSE_CTL1_CMD_AUTOLOAD ; 
 int EFUSE_CTL1_CMD_MASK ; 
 int EFUSE_CTL1_EXECUTE ; 
 int EFUSE_CTL2_RESET ; 
 int ENOENT ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  JME_EFUSE_CTL1 ; 
 int /*<<< orphan*/  JME_EFUSE_CTL2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC4(struct jme_softc *sc)
{
	uint32_t reg;
	int i;

	reg = FUNC2(sc->jme_dev, JME_EFUSE_CTL1, 4);
	if ((reg & (EFUSE_CTL1_AUTOLOAD_ERR | EFUSE_CTL1_AUTOLAOD_DONE)) !=
	    EFUSE_CTL1_AUTOLAOD_DONE)
		return (ENOENT);
	/* Reset eFuse controller. */
	reg = FUNC2(sc->jme_dev, JME_EFUSE_CTL2, 4);
	reg |= EFUSE_CTL2_RESET;
	FUNC3(sc->jme_dev, JME_EFUSE_CTL2, reg, 4);
	reg = FUNC2(sc->jme_dev, JME_EFUSE_CTL2, 4);
	reg &= ~EFUSE_CTL2_RESET;
	FUNC3(sc->jme_dev, JME_EFUSE_CTL2, reg, 4);

	/* Have eFuse reload station address to MAC controller. */
	reg = FUNC2(sc->jme_dev, JME_EFUSE_CTL1, 4);
	reg &= ~EFUSE_CTL1_CMD_MASK;
	reg |= EFUSE_CTL1_CMD_AUTOLOAD | EFUSE_CTL1_EXECUTE;
	FUNC3(sc->jme_dev, JME_EFUSE_CTL1, reg, 4);

	/*
	 * Verify completion of eFuse autload command.  It should be
	 * completed within 108us.
	 */
	FUNC0(110);
	for (i = 10; i > 0; i--) {
		reg = FUNC2(sc->jme_dev, JME_EFUSE_CTL1, 4);
		if ((reg & (EFUSE_CTL1_AUTOLOAD_ERR |
		    EFUSE_CTL1_AUTOLAOD_DONE)) != EFUSE_CTL1_AUTOLAOD_DONE) {
			FUNC0(20);
			continue;
		}
		if ((reg & EFUSE_CTL1_EXECUTE) == 0)
			break;
		/* Station address loading is still in progress. */
		FUNC0(20);
	}
	if (i == 0) {
		FUNC1(sc->jme_dev, "eFuse autoload timed out.\n");
		return (ETIMEDOUT);
	}

	return (0);
}