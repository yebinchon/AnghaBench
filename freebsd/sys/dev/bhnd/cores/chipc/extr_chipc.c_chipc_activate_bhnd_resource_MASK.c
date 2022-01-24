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
struct rman {int dummy; } ;
struct chipc_softc {int dummy; } ;
struct bhnd_resource {int direct; int /*<<< orphan*/  res; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int RF_ACTIVE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct bhnd_resource*) ; 
 struct rman* FUNC1 (struct chipc_softc*,int) ; 
 int FUNC2 (struct chipc_softc*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int) ; 
 struct chipc_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct rman*) ; 

__attribute__((used)) static int
FUNC6(device_t dev, device_t child, int type,
    int rid, struct bhnd_resource *r)
{
	struct chipc_softc	*sc;
	struct rman		*rm;
	int			 error;

	sc = FUNC3(dev);
	
	/* Delegate non-locally managed resources to parent */
	rm = FUNC1(sc, type);
	if (rm == NULL || !FUNC5(r->res, rm)) {
		return (FUNC0(dev, child, type,
		    rid, r));
	}

	/* Try activating the chipc region resource */
	error = FUNC2(sc, child, type, rid, r->res,
	    false);
	if (error)
		return (error);

	/* Mark the child resource as direct according to the returned resource
	 * state */
	if (FUNC4(r->res) & RF_ACTIVE)
		r->direct = true;

	return (0);
}