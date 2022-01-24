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
struct vtnet_softc {int /*<<< orphan*/  vtnet_dev; } ;
typedef  int /*<<< orphan*/  path ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int,char const*) ; 

__attribute__((used)) static int
FUNC3(struct vtnet_softc *sc, const char *knob, int def)
{
	char path[64];

	FUNC2(path, sizeof(path),
	    "hw.vtnet.%d.%s", FUNC1(sc->vtnet_dev), knob);
	FUNC0(path, &def);

	return (def);
}