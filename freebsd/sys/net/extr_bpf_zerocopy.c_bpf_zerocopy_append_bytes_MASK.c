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
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct zbuf {int zb_flags; int zb_numpages; int /*<<< orphan*/ * zb_pages; } ;
struct bpf_zbuf_header {int dummy; } ;
struct bpf_d {scalar_t__ bd_bufmode; } ;
typedef  int /*<<< orphan*/ * caddr_t ;

/* Variables and functions */
 scalar_t__ BPF_BUFMODE_ZBUF ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int PAGE_SIZE ; 
 int ZBUF_FLAG_ASSIGNED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(struct bpf_d *d, caddr_t buf, u_int offset,
    void *src, u_int len)
{
	u_int count, page, poffset;
	u_char *src_bytes;
	struct zbuf *zb;

	FUNC0(d->bd_bufmode == BPF_BUFMODE_ZBUF,
	    ("bpf_zerocopy_append_bytes: not in zbuf mode"));
	FUNC0(buf != NULL, ("bpf_zerocopy_append_bytes: NULL buf"));

	src_bytes = (u_char *)src;
	zb = (struct zbuf *)buf;

	FUNC0((zb->zb_flags & ZBUF_FLAG_ASSIGNED) == 0,
	    ("bpf_zerocopy_append_bytes: ZBUF_FLAG_ASSIGNED"));

	/*
	 * Scatter-gather copy to user pages mapped into kernel address space
	 * using sf_bufs: copy up to a page at a time.
	 */
	offset += sizeof(struct bpf_zbuf_header);
	page = offset / PAGE_SIZE;
	poffset = offset % PAGE_SIZE;
	while (len > 0) {
		FUNC0(page < zb->zb_numpages, ("bpf_zerocopy_append_bytes:"
		   " page overflow (%d p %d np)\n", page, zb->zb_numpages));

		count = FUNC2(len, PAGE_SIZE - poffset);
		FUNC1(src_bytes, ((u_char *)FUNC3(zb->zb_pages[page])) +
		    poffset, count);
		poffset += count;
		if (poffset == PAGE_SIZE) {
			poffset = 0;
			page++;
		}
		FUNC0(poffset < PAGE_SIZE,
		    ("bpf_zerocopy_append_bytes: page offset overflow (%d)",
		    poffset));
		len -= count;
		src_bytes += count;
	}
}