#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  ext_size; } ;
struct TYPE_5__ {int /*<<< orphan*/  len; } ;
struct mbuf {TYPE_2__ m_ext; TYPE_1__ m_pkthdr; int /*<<< orphan*/  m_len; } ;
typedef  int /*<<< orphan*/  bus_dmamap_t ;
typedef  int /*<<< orphan*/  bus_dma_tag_t ;
struct TYPE_7__ {int /*<<< orphan*/  ds_addr; } ;
typedef  TYPE_3__ bus_dma_segment_t ;
typedef  int /*<<< orphan*/  bus_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_PREREAD ; 
 int /*<<< orphan*/  BUS_DMA_NOWAIT ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MT_DATA ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  M_PKTHDR ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mbuf*,TYPE_3__*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int) ; 

__attribute__((used)) static int
FUNC6(bus_dma_tag_t tag, bus_dmamap_t map, struct mbuf **mbufp,
    bus_addr_t *paddr)
{
	struct mbuf *new_mbuf;
	bus_dma_segment_t seg[1];
	int error;
	int nsegs;

	FUNC0(mbufp != NULL, ("NULL mbuf pointer!"));

	new_mbuf = FUNC4(M_NOWAIT, MT_DATA, M_PKTHDR);
	if (new_mbuf == NULL)
		return (ENOBUFS);
	new_mbuf->m_len = new_mbuf->m_pkthdr.len = new_mbuf->m_ext.ext_size;

	if (*mbufp) {
		FUNC2(tag, map, BUS_DMASYNC_POSTREAD);
		FUNC3(tag, map);
	}

	error = FUNC1(tag, map, new_mbuf, seg, &nsegs,
	    BUS_DMA_NOWAIT);
	FUNC0(nsegs == 1, ("Too many segments returned!"));
	if (nsegs != 1 || error)
		FUNC5("mge_new_rxbuf(): nsegs(%d), error(%d)", nsegs, error);

	FUNC2(tag, map, BUS_DMASYNC_PREREAD);

	(*mbufp) = new_mbuf;
	(*paddr) = seg->ds_addr;
	return (0);
}