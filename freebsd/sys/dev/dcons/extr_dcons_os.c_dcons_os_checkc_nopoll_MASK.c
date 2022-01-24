#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dcons_softc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dma_map; int /*<<< orphan*/ * dma_tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_PREREAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct dcons_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dcons_softc*) ; 
 TYPE_1__ dg ; 

__attribute__((used)) static int
FUNC3(struct dcons_softc *dc)
{
	int c;

	if (dg.dma_tag != NULL)
		FUNC0(dg.dma_tag, dg.dma_map, BUS_DMASYNC_POSTREAD);

	c = FUNC1(dc, FUNC2(dc));

	if (dg.dma_tag != NULL)
		FUNC0(dg.dma_tag, dg.dma_map, BUS_DMASYNC_PREREAD);

	return (c);
}