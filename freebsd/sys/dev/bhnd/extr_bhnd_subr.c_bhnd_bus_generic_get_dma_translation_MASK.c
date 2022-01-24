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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u_int ;
struct bhnd_dma_translation {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  bus_dma_tag_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct bhnd_dma_translation*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int
FUNC3(device_t dev, device_t child, u_int width,
    uint32_t flags, bus_dma_tag_t *dmat,
    struct bhnd_dma_translation *translation)
{
	if (FUNC1(dev) != NULL) {
		return (FUNC0(FUNC1(dev),
		    child, width, flags, dmat, translation));
	}

	FUNC2("missing BHND_BUS_GET_DMA_TRANSLATION()");
}