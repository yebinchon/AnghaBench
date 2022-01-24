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
struct xdmatest_softc {int /*<<< orphan*/  dst_dma_tag; int /*<<< orphan*/  dst_dma_map; int /*<<< orphan*/  dst; int /*<<< orphan*/  src_dma_tag; int /*<<< orphan*/  src_dma_map; int /*<<< orphan*/  src; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct xdmatest_softc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct xdmatest_softc *sc;

	sc = FUNC3(dev);

	FUNC1(sc->src_dma_tag, sc->src_dma_map);
	FUNC2(sc->src_dma_tag, sc->src, sc->src_dma_map);
	FUNC0(sc->src_dma_tag);

	FUNC1(sc->dst_dma_tag, sc->dst_dma_map);
	FUNC2(sc->dst_dma_tag, sc->dst, sc->dst_dma_map);
	FUNC0(sc->dst_dma_tag);

	return (0);
}