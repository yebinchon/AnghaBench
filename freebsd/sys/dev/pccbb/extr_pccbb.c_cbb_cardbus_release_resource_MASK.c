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
struct cbb_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct resource*) ; 
 int RF_ACTIVE ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int,struct resource*) ; 
 int /*<<< orphan*/  FUNC2 (struct cbb_softc*,struct resource*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct cbb_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct resource*) ; 

__attribute__((used)) static int
FUNC6(device_t brdev, device_t child, int type,
    int rid, struct resource *res)
{
	struct cbb_softc *sc = FUNC4(brdev);
	int error;

	if (FUNC5(res) & RF_ACTIVE) {
		error = FUNC1(child, type, rid, res);
		if (error != 0)
			return (error);
	}
	FUNC2(sc, res);
	return (FUNC0(FUNC3(brdev), child,
	    type, rid, res));
}