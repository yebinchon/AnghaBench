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
struct port_info {int flags; int /*<<< orphan*/  media; int /*<<< orphan*/  tick; int /*<<< orphan*/ * vi; struct adapter* adapter; } ;
struct adapter {int traceq; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int HAS_TRACEQ ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct port_info* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct adapter*) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct port_info *pi = FUNC4(dev);
	struct adapter *sc = pi->adapter;
	int rc;

	/* Detach the extra VIs first. */
	rc = FUNC0(dev);
	if (rc)
		return (rc);
	FUNC3(dev);

	FUNC5(sc, &pi->vi[0]);

	if (pi->flags & HAS_TRACEQ) {
		sc->traceq = -1;	/* cloner should not create ifnet */
		FUNC8(sc);
	}

	FUNC2(&pi->vi[0]);
	FUNC1(&pi->tick);
	FUNC7(&pi->media);

	FUNC6(sc, 0);

	return (0);
}