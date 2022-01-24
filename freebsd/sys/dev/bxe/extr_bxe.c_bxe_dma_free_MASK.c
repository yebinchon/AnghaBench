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
struct bxe_softc {int dummy; } ;
struct bxe_dma {scalar_t__ size; int /*<<< orphan*/ * tag; int /*<<< orphan*/  map; int /*<<< orphan*/  vaddr; } ;

/* Variables and functions */
 int BUS_DMASYNC_POSTREAD ; 
 int BUS_DMASYNC_POSTWRITE ; 
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bxe_dma*,int /*<<< orphan*/ ,int) ; 

void
FUNC6(struct bxe_softc *sc,
             struct bxe_dma   *dma)
{
    if (dma->size > 0) {
        FUNC0(sc, (dma->tag != NULL), ("dma tag is NULL"));

        FUNC2(dma->tag, dma->map,
                        (BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE));
        FUNC3(dma->tag, dma->map);
        FUNC4(dma->tag, dma->vaddr, dma->map);
        FUNC1(dma->tag);
    }

    FUNC5(dma, 0, sizeof(*dma));
}