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
struct sc_info {int flags; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ETIMEDOUT ; 
 int ICH_IGNORE_PCR ; 
 int /*<<< orphan*/  ICH_REG_ACC_SEMA ; 
 int ICH_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct sc_info*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(void *devinfo)
{
	struct sc_info *sc = (struct sc_info *)devinfo;
	uint32_t data;
	int i;

	for (i = 0; i < ICH_TIMEOUT; i++) {
		data = FUNC2(sc, ICH_REG_ACC_SEMA, 1);
		if ((data & 0x01) == 0)
			return (0);
		FUNC0(1);
	}
	if ((sc->flags & ICH_IGNORE_PCR) != 0)
		return (0);
	FUNC1(sc->dev, "CODEC semaphore timeout\n");
	return (ETIMEDOUT);
}