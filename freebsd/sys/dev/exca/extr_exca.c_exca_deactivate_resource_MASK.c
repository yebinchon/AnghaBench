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
struct resource {int dummy; } ;
struct exca_softc {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct resource*) ; 
 int ENOENT ; 
 int RF_ACTIVE ; 
#define  SYS_RES_IOPORT 129 
#define  SYS_RES_MEMORY 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct exca_softc*,struct resource*) ; 
 int /*<<< orphan*/  FUNC3 (struct exca_softc*,struct resource*) ; 
 int FUNC4 (struct resource*) ; 

int
FUNC5(struct exca_softc *exca, device_t child, int type,
    int rid, struct resource *res)
{
	if (FUNC4(res) & RF_ACTIVE) { /* if activated */
		switch (type) {
		case SYS_RES_IOPORT:
			if (FUNC2(exca, res))
				return (ENOENT);
			break;
		case SYS_RES_MEMORY:
			if (FUNC3(exca, res))
				return (ENOENT);
			break;
		}
	}
	return (FUNC0(FUNC1(exca->dev), child,
	    type, rid, res));
}