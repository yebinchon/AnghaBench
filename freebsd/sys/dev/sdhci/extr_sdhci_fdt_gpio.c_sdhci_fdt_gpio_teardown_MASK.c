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
struct sdhci_fdt_gpio {int /*<<< orphan*/ * cd_ires; int /*<<< orphan*/  dev; int /*<<< orphan*/ * cd_pin; int /*<<< orphan*/ * wp_pin; int /*<<< orphan*/ * cd_ihandler; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_fdt_gpio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(struct sdhci_fdt_gpio *gpio)
{

	if (gpio == NULL)
		return;

	if (gpio->cd_ihandler != NULL)
		FUNC1(gpio->dev, gpio->cd_ires, gpio->cd_ihandler);
	if (gpio->wp_pin != NULL)
		FUNC3(gpio->wp_pin);
	if (gpio->cd_pin != NULL)
		FUNC3(gpio->cd_pin);
	if (gpio->cd_ires != NULL)
		FUNC0(gpio->dev, SYS_RES_IRQ, 0, gpio->cd_ires);

	FUNC2(gpio, M_DEVBUF);
}