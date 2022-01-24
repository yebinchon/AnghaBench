#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int intline; int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ pcicfgregs ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PCIR_CACHELNSZ ; 
 int /*<<< orphan*/  PCIR_INTLINE ; 
 int /*<<< orphan*/  PCIR_LATTIMER ; 
 int /*<<< orphan*/  PCIR_MAXLAT ; 
 int PCIR_MAX_BAR_0 ; 
 int /*<<< orphan*/  PCIR_MINGNT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC4(pcicfgregs *cfg)
{
	device_t dev = cfg->dev;
	int i;

	/*
	 * Some cards power up with garbage in their BARs.  This
	 * code clears all that junk out.
	 */
	for (i = 0; i < PCIR_MAX_BAR_0; i++)
		FUNC3(dev, FUNC0(i), 0, 4);

	cfg->intline =
	    FUNC2(FUNC1(FUNC1(dev)));
	FUNC3(dev, PCIR_INTLINE, cfg->intline, 1);
	FUNC3(dev, PCIR_CACHELNSZ, 0x08, 1);
	FUNC3(dev, PCIR_LATTIMER, 0xa8, 1);
	FUNC3(dev, PCIR_MINGNT, 0x14, 1);
	FUNC3(dev, PCIR_MAXLAT, 0x14, 1);
}