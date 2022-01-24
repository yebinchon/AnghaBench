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
struct bxe_softc {int /*<<< orphan*/  parent_dma_tag; } ;
struct bxe_dma {scalar_t__ size; int /*<<< orphan*/  tag; int /*<<< orphan*/  map; int /*<<< orphan*/  vaddr; int /*<<< orphan*/  msg; struct bxe_softc* sc; } ;
typedef  scalar_t__ bus_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  BCM_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*,char const*,int) ; 
 int /*<<< orphan*/  BUS_DMA_ALLOCNOW ; 
 int BUS_DMA_NOWAIT ; 
 int BUS_DMA_ZERO ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,struct bxe_dma*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,void**,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bxe_dma_map_addr ; 
 int /*<<< orphan*/  FUNC6 (struct bxe_dma*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,char*,char const*) ; 

int
FUNC8(struct bxe_softc *sc,
              bus_size_t       size,
              struct bxe_dma   *dma,
              const char       *msg)
{
    int rc;

    if (dma->size > 0) {
        FUNC0(sc, "dma block '%s' already has size %lu\n", msg,
              (unsigned long)dma->size);
        return (1);
    }

    FUNC6(dma, 0, sizeof(*dma)); /* sanity */
    dma->sc   = sc;
    dma->size = size;
    FUNC7(dma->msg, sizeof(dma->msg), "%s", msg);

    rc = FUNC1(sc->parent_dma_tag, /* parent tag */
                            BCM_PAGE_SIZE,      /* alignment */
                            0,                  /* boundary limit */
                            BUS_SPACE_MAXADDR,  /* restricted low */
                            BUS_SPACE_MAXADDR,  /* restricted hi */
                            NULL,               /* addr filter() */
                            NULL,               /* addr filter() arg */
                            size,               /* max map size */
                            1,                  /* num discontinuous */
                            size,               /* max seg size */
                            BUS_DMA_ALLOCNOW,   /* flags */
                            NULL,               /* lock() */
                            NULL,               /* lock() arg */
                            &dma->tag);         /* returned dma tag */
    if (rc != 0) {
        FUNC0(sc, "Failed to create dma tag for '%s' (%d)\n", msg, rc);
        FUNC6(dma, 0, sizeof(*dma));
        return (1);
    }

    rc = FUNC4(dma->tag,
                          (void **)&dma->vaddr,
                          (BUS_DMA_NOWAIT | BUS_DMA_ZERO),
                          &dma->map);
    if (rc != 0) {
        FUNC0(sc, "Failed to alloc dma mem for '%s' (%d)\n", msg, rc);
        FUNC2(dma->tag);
        FUNC6(dma, 0, sizeof(*dma));
        return (1);
    }

    rc = FUNC3(dma->tag,
                         dma->map,
                         dma->vaddr,
                         size,
                         bxe_dma_map_addr, /* BLOGD in here */
                         dma,
                         BUS_DMA_NOWAIT);
    if (rc != 0) {
        FUNC0(sc, "Failed to load dma map for '%s' (%d)\n", msg, rc);
        FUNC5(dma->tag, dma->vaddr, dma->map);
        FUNC2(dma->tag);
        FUNC6(dma, 0, sizeof(*dma));
        return (1);
    }

    return (0);
}