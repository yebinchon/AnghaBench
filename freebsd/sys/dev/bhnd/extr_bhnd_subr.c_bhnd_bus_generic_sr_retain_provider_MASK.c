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
struct bhnd_service_registry {int dummy; } ;
typedef  int /*<<< orphan*/ * device_t ;
typedef  int /*<<< orphan*/  bhnd_service_t ;

/* Variables and functions */
 struct bhnd_service_registry* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BHND_SPF_INHERITED ; 
 int EEXIST ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct bhnd_service_registry*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (struct bhnd_service_registry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int) ; 

device_t
FUNC8(device_t dev, device_t child,
    bhnd_service_t service)
{
	struct bhnd_service_registry	*bsr;
	device_t			 parent, provider;
	int				 error;

	bsr = FUNC0(dev, child);
	FUNC3(bsr != NULL, ("NULL service registry"));

	/*
	 * Attempt to fetch a service provider reference from either the local
	 * service registry, or if not found, from our parent.
	 * 
	 * If we fetch a provider from our parent, we register the provider
	 * with the local service registry to prevent conflicting local
	 * registrations from being added.
	 */
	while (1) {
		/* Check the local service registry first */
		provider = FUNC5(bsr, service);
		if (provider != NULL)
			return (provider);

		/* Otherwise, try to delegate to our parent (if any) */
		if ((parent = FUNC6(dev)) == NULL)
			return (NULL);

		provider = FUNC2(parent, dev, service);
		if (provider == NULL)
			return (NULL);

		/* Register the inherited service registration with the local
		 * registry */
		error = FUNC4(bsr, provider, service,
		    BHND_SPF_INHERITED);
		if (error) {
			FUNC1(parent, dev, provider,
			    service);
			if (error == EEXIST) {
				/* A valid service provider was registered
				 * concurrently; retry fetching from the local
				 * registry */
				continue;
			}

			FUNC7(dev, "failed to register service "
			    "provider: %d\n", error);
			return (NULL);
		}
	}
}