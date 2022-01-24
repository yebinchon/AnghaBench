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
struct mtk_spi_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTK_SPIBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct mtk_spi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int
FUNC2(struct mtk_spi_softc *sc)
{
	int i = 1000;

	while (i--) {
		if (!FUNC0(sc, MTK_SPIBUSY))
			break;
	}
	if (i == 0) {
		FUNC1("busy\n");
		return (1);
	}

	return (0);
}