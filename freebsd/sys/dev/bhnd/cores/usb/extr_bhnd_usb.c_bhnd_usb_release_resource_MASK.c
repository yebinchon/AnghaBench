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
struct resource_list_entry {int /*<<< orphan*/ * res; } ;
struct resource {int dummy; } ;
struct bhnd_usb_softc {int dummy; } ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 int FUNC0 (scalar_t__,scalar_t__,int,int,struct resource*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int RF_ACTIVE ; 
 int SYS_RES_MEMORY ; 
 int FUNC2 (scalar_t__,scalar_t__,int,int,struct resource*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 struct bhnd_usb_softc* FUNC4 (scalar_t__) ; 
 struct resource_list_entry* FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC6 (struct resource*) ; 
 int FUNC7 (struct resource*) ; 

__attribute__((used)) static int
FUNC8(device_t dev, device_t child, int type,
    int rid, struct resource *r)
{
	struct bhnd_usb_softc		*sc;
	struct resource_list_entry	*rle;
	bool				 passthrough;
	int				 error;

	sc = FUNC4(dev);
	passthrough = (FUNC3(child) != dev);

	/* Delegate to our parent device's bus if the requested resource type
	 * isn't handled locally. */
	if (type != SYS_RES_MEMORY) {
		return (FUNC2(dev, child, type, rid,
		    r));
	}

	/* Deactivate resources */
	if (FUNC6(r) & RF_ACTIVE) {
		error = FUNC0(dev, child, type, rid, r);
		if (error)
			return (error);
	}

	if ((error = FUNC7(r)))
		return (error);

	if (!passthrough) {
		/* Clean resource list entry */
		rle = FUNC5(FUNC1(dev, child),
		    type, rid);
		if (rle != NULL)
			rle->res = NULL;
	}

	return (0);
}