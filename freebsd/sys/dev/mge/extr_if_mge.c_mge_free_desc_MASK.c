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
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;
struct mge_softc {int /*<<< orphan*/  mge_desc_dtag; } ;
struct mge_desc_wrapper {scalar_t__ desc_dmap; int /*<<< orphan*/  mge_desc; int /*<<< orphan*/  buffer; scalar_t__ buffer_dmap; } ;
typedef  int /*<<< orphan*/  bus_dma_tag_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct mge_softc *sc, struct mge_desc_wrapper* tab,
    uint32_t size, bus_dma_tag_t buffer_tag, uint8_t free_mbufs)
{
	struct mge_desc_wrapper *dw;
	int i;

	for (i = 0; i < size; i++) {
		/* Free RX mbuf */
		dw = &(tab[i]);

		if (dw->buffer_dmap) {
			if (free_mbufs) {
				FUNC1(buffer_tag, dw->buffer_dmap,
				    BUS_DMASYNC_POSTREAD);
				FUNC2(buffer_tag, dw->buffer_dmap);
			}
			FUNC0(buffer_tag, dw->buffer_dmap);
			if (free_mbufs)
				FUNC4(dw->buffer);
		}
		/* Free RX descriptors */
		if (dw->desc_dmap) {
			FUNC1(sc->mge_desc_dtag, dw->desc_dmap,
			    BUS_DMASYNC_POSTREAD);
			FUNC2(sc->mge_desc_dtag, dw->desc_dmap);
			FUNC3(sc->mge_desc_dtag, dw->mge_desc,
			    dw->desc_dmap);
		}
	}
}