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
struct sdhci_slot {int dummy; } ;
struct sdhci_fdt_gpio {struct sdhci_slot* slot; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (struct sdhci_fdt_gpio*,int /*<<< orphan*/ ) ; 
 struct sdhci_fdt_gpio* FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sdhci_fdt_gpio*,int /*<<< orphan*/ ) ; 

struct sdhci_fdt_gpio *
FUNC4(device_t dev, struct sdhci_slot *slot)
{
	phandle_t node;
	struct sdhci_fdt_gpio *gpio;

	gpio = FUNC1(sizeof(*gpio), M_DEVBUF, M_ZERO | M_WAITOK);
	gpio->dev  = dev;
	gpio->slot = slot;

	node = FUNC2(dev);

	FUNC3(gpio, node);
	FUNC0(gpio, node);

	return (gpio);
}