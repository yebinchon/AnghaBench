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
struct mbuf_ext_pgs {int hdr_len; int first_pg_off; int npgs; int trail_len; int /*<<< orphan*/ * trail; scalar_t__* pa; int /*<<< orphan*/ * hdr; } ;
struct TYPE_2__ {struct mbuf_ext_pgs* ext_pgs; } ;
struct mbuf {int m_len; TYPE_1__ m_ext; } ;
typedef  int /*<<< orphan*/  bus_dmamap_t ;
typedef  int /*<<< orphan*/  bus_dma_tag_t ;
typedef  int /*<<< orphan*/  bus_dma_segment_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  kernel_pmap ; 
 int FUNC4 (struct mbuf_ext_pgs*,int,int) ; 
 int FUNC5 (int,int) ; 
 int FUNC6 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vm_offset_t ; 

__attribute__((used)) static int
FUNC7(bus_dma_tag_t dmat, bus_dmamap_t map,
    struct mbuf *m, bus_dma_segment_t *segs, int *nsegs, int flags)
{
	struct mbuf_ext_pgs *ext_pgs;
	int error, i, off, len, pglen, pgoff, seglen, segoff;

	FUNC1(m);
	ext_pgs = m->m_ext.ext_pgs;

	len = m->m_len;
	error = 0;

	/* Skip over any data removed from the front. */
	off = FUNC6(m, vm_offset_t);

	if (ext_pgs->hdr_len != 0) {
		if (off >= ext_pgs->hdr_len) {
			off -= ext_pgs->hdr_len;
		} else {
			seglen = ext_pgs->hdr_len - off;
			segoff = off;
			seglen = FUNC5(seglen, len);
			off = 0;
			len -= seglen;
			error = FUNC2(dmat, map,
			    &ext_pgs->hdr[segoff], seglen, kernel_pmap,
			    flags, segs, nsegs);
		}
	}
	pgoff = ext_pgs->first_pg_off;
	for (i = 0; i < ext_pgs->npgs && error == 0 && len > 0; i++) {
		pglen = FUNC4(ext_pgs, i, pgoff);
		if (off >= pglen) {
			off -= pglen;
			pgoff = 0;
			continue;
		}
		seglen = pglen - off;
		segoff = pgoff + off;
		off = 0;
		seglen = FUNC5(seglen, len);
		len -= seglen;
		error = FUNC3(dmat, map,
		    ext_pgs->pa[i] + segoff, seglen, flags, segs, nsegs);
		pgoff = 0;
	};
	if (len != 0 && error == 0) {
		FUNC0((off + len) <= ext_pgs->trail_len,
		    ("off + len > trail (%d + %d > %d)", off, len,
		    ext_pgs->trail_len));
		error = FUNC2(dmat, map,
		    &ext_pgs->trail[off], len, kernel_pmap, flags, segs,
		    nsegs);
	}
	return (error);
}