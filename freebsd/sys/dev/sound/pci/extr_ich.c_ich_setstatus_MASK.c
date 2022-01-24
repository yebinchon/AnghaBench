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
struct sc_info {int flags; int /*<<< orphan*/  dev; int /*<<< orphan*/  bufsz; int /*<<< orphan*/  irq; int /*<<< orphan*/  nabmbar; int /*<<< orphan*/  nambar; } ;

/* Variables and functions */
 int ICH_DMA_NOCACHE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SND_STATUSLEN ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  snd_ich ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct sc_info *sc)
{
	char status[SND_STATUSLEN];

	FUNC4(status, SND_STATUSLEN,
	    "at io 0x%jx, 0x%jx irq %jd bufsz %u %s",
	    FUNC3(sc->nambar), FUNC3(sc->nabmbar),
	    FUNC3(sc->irq), sc->bufsz,FUNC0(snd_ich));

	if (bootverbose && (sc->flags & ICH_DMA_NOCACHE))
		FUNC1(sc->dev,
		    "PCI Master abort workaround enabled\n");

	FUNC2(sc->dev, status);
}