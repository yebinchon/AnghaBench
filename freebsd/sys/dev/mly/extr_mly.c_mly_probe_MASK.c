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
struct mly_ident {scalar_t__ vendor; scalar_t__ device; scalar_t__ subvendor; scalar_t__ subdevice; int /*<<< orphan*/  desc; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mly_ident* mly_identifiers ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
    struct mly_ident	*m;

    FUNC0(1);

    for (m = mly_identifiers; m->vendor != 0; m++) {
	if ((m->vendor == FUNC5(dev)) &&
	    (m->device == FUNC2(dev)) &&
	    ((m->subvendor == 0) || ((m->subvendor == FUNC4(dev)) &&
				     (m->subdevice == FUNC3(dev))))) {
	    
	    FUNC1(dev, m->desc);
	    return(BUS_PROBE_DEFAULT);	/* allow room to be overridden */
	}
    }
    return(ENXIO);
}