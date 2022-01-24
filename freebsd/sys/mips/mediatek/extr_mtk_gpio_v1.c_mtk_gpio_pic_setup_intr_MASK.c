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
typedef  scalar_t__ uint32_t ;
typedef  unsigned int u_int ;
struct resource {int dummy; } ;
struct mtk_gpio_softc {int dummy; } ;
struct intr_map_data_gpio {int dummy; } ;
struct intr_map_data_fdt {int dummy; } ;
struct intr_map_data {int type; } ;
struct intr_irqsrc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOTSUP ; 
 scalar_t__ GPIO_INTR_EDGE_BOTH ; 
 scalar_t__ GPIO_INTR_EDGE_FALLING ; 
 scalar_t__ GPIO_INTR_EDGE_RISING ; 
 int /*<<< orphan*/  GPIO_PIOFENA ; 
 int /*<<< orphan*/  GPIO_PIORENA ; 
#define  INTR_MAP_DATA_FDT 129 
#define  INTR_MAP_DATA_GPIO 128 
 int /*<<< orphan*/  FUNC0 (struct mtk_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_gpio_softc*) ; 
 unsigned int FUNC2 (struct mtk_gpio_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mtk_gpio_softc*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct mtk_gpio_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mtk_gpio_softc*,struct intr_map_data_fdt*,unsigned int*,scalar_t__*) ; 
 int FUNC6 (struct mtk_gpio_softc*,struct intr_map_data_gpio*,unsigned int*,scalar_t__*) ; 

__attribute__((used)) static int
FUNC7(device_t dev, struct intr_irqsrc *isrc,
    struct resource *res, struct intr_map_data *data)
{
	struct mtk_gpio_softc *sc;
	uint32_t val;
	int error;
	uint32_t mode;
	u_int irq;

	if (data == NULL)
		return (ENOTSUP);

	sc = FUNC4(dev);

	switch (data->type) {
	case INTR_MAP_DATA_FDT:
		error = FUNC5(sc, 
		    (struct intr_map_data_fdt *)data, &irq, &mode);
		break;
	case INTR_MAP_DATA_GPIO:
		error = FUNC6(sc, 
		    (struct intr_map_data_gpio *)data, &irq, &mode);
		break;
	default:
		error = ENOTSUP;
		break;
	}

	if (error != 0)
		return (error);
	
	FUNC0(sc);
	if (mode == GPIO_INTR_EDGE_BOTH || mode == GPIO_INTR_EDGE_RISING) {
		val = FUNC2(sc, GPIO_PIORENA) | (1u << irq);
		FUNC3(sc, GPIO_PIORENA, val);
	}
	if (mode == GPIO_INTR_EDGE_BOTH || mode == GPIO_INTR_EDGE_FALLING) {
		val = FUNC2(sc, GPIO_PIOFENA) | (1u << irq);
		FUNC3(sc, GPIO_PIOFENA, val);
	}
	FUNC1(sc);
	return (0);
}