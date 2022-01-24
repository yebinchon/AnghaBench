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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ ,char const**) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const**) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  puc_pccard_rscom ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	const char *vendor, *product;
	int error;

	error = FUNC1(dev, &vendor);
	if (error)
		return(error);
	error = FUNC0(dev, &product);
	if (error)
		return(error);
	if (!FUNC3(vendor, "PCMCIA") && !FUNC3(product, "RS-COM 2P"))
		return (FUNC2(dev, &puc_pccard_rscom));

	return (ENXIO);
}