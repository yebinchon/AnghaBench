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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct resource*) ; 
 int /*<<< orphan*/  PCCARD_WIDTH_AUTO ; 
 int RF_ACTIVE ; 
#define  SYS_RES_IOPORT 129 
#define  SYS_RES_MEMORY 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct exca_softc*,int /*<<< orphan*/ ,struct resource*) ; 
 int FUNC4 (struct exca_softc*,int /*<<< orphan*/ ,struct resource*) ; 
 int FUNC5 (struct resource*) ; 

int
FUNC6(struct exca_softc *exca, device_t child, int type,
    int rid, struct resource *res)
{
	int err;

	if (FUNC5(res) & RF_ACTIVE)
		return (0);
	err = FUNC0(FUNC2(exca->dev), child,
	    type, rid, res);
	if (err)
		return (err);
	switch (type) {
	case SYS_RES_IOPORT:
		err = FUNC3(exca, PCCARD_WIDTH_AUTO, res);
		break;
	case SYS_RES_MEMORY:
		err = FUNC4(exca, 0, res);
		break;
	}
	if (err)
		FUNC1(FUNC2(exca->dev), child,
		    type, rid, res);
	return (err);
}