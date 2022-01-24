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
typedef  int /*<<< orphan*/  vm_page_t ;
struct uio {int dummy; } ;
struct mbuf_ext_pgs {int hdr_len; int first_pg_off; int npgs; int trail_len; int /*<<< orphan*/ * trail; int /*<<< orphan*/ * pa; int /*<<< orphan*/ * hdr; } ;
struct TYPE_2__ {struct mbuf_ext_pgs* ext_pgs; } ;
struct mbuf {TYPE_1__ m_ext; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mbuf_ext_pgs*,int,int) ; 
 int FUNC4 (int,int) ; 
 int FUNC5 (struct mbuf const*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,struct uio*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int,int,struct uio*) ; 
 int /*<<< orphan*/  vm_offset_t ; 

int
FUNC8(const struct mbuf *m, int m_off, struct uio *uio, int len)
{
	struct mbuf_ext_pgs *ext_pgs;
	vm_page_t pg;
	int error, i, off, pglen, pgoff, seglen, segoff;

	FUNC1(m);
	ext_pgs = m->m_ext.ext_pgs;
	error = 0;

	/* Skip over any data removed from the front. */
	off = FUNC5(m, vm_offset_t);

	off += m_off;
	if (ext_pgs->hdr_len != 0) {
		if (off >= ext_pgs->hdr_len) {
			off -= ext_pgs->hdr_len;
		} else {
			seglen = ext_pgs->hdr_len - off;
			segoff = off;
			seglen = FUNC4(seglen, len);
			off = 0;
			len -= seglen;
			error = FUNC6(&ext_pgs->hdr[segoff], seglen, uio);
		}
	}
	pgoff = ext_pgs->first_pg_off;
	for (i = 0; i < ext_pgs->npgs && error == 0 && len > 0; i++) {
		pglen = FUNC3(ext_pgs, i, pgoff);
		if (off >= pglen) {
			off -= pglen;
			pgoff = 0;
			continue;
		}
		seglen = pglen - off;
		segoff = pgoff + off;
		off = 0;
		seglen = FUNC4(seglen, len);
		len -= seglen;
		pg = FUNC2(ext_pgs->pa[i]);
		error = FUNC7(&pg, segoff, seglen, uio);
		pgoff = 0;
	};
	if (len != 0 && error == 0) {
		FUNC0((off + len) <= ext_pgs->trail_len,
		    ("off + len > trail (%d + %d > %d, m_off = %d)", off, len,
		    ext_pgs->trail_len, m_off));
		error = FUNC6(&ext_pgs->trail[off], len, uio);
	}
	return (error);
}