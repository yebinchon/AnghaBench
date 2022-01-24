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
struct bhnd_softc {int dummy; } ;
typedef  int /*<<< orphan*/ * device_t ;
typedef  int /*<<< orphan*/  bhnd_nvram_type ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,void*,size_t*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,void*,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BHND_SERVICE_NVRAM ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 struct bhnd_softc* FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(device_t dev, device_t child, const char *name,
    void *buf, size_t *size, bhnd_nvram_type type)
{
	struct bhnd_softc	*sc;
	device_t		 nvram, parent;
	int			 error;

	sc = FUNC5(dev);

	/* If a NVRAM device is available, consult it first */
	nvram = FUNC3(child, BHND_SERVICE_NVRAM);
	if (nvram != NULL) {
		error = FUNC1(nvram, name, buf, size, type);
		FUNC2(child, nvram, BHND_SERVICE_NVRAM);
		return (error);
	}

	/* Otherwise, try to delegate to parent */
	if ((parent = FUNC4(dev)) == NULL)
		return (ENODEV);

	return (FUNC0(FUNC4(dev), child,
	    name, buf, size, type));
}