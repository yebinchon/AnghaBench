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
struct pvscsi_softc {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  cfg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int,char*) ; 

__attribute__((used)) static int FUNC3(struct pvscsi_softc *sc, char *name, int value)
{
	char cfg[64];

	FUNC2(cfg, sizeof(cfg), "hw.pvscsi.%d.%s", FUNC1(sc->dev),
	    name);
	FUNC0(cfg, &value);

	return (value);
}