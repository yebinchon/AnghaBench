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
struct zbuf {scalar_t__ zb_uaddr; } ;
struct thread {int dummy; } ;
struct bpf_zbuf {int /*<<< orphan*/  bz_buflen; void* bz_bufa; } ;
struct bpf_d {scalar_t__ bd_slen; int /*<<< orphan*/  bd_hlen; int /*<<< orphan*/ * bd_hbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bpf_d*) ; 
 int /*<<< orphan*/  FUNC1 (struct bpf_d*) ; 
 int /*<<< orphan*/  FUNC2 (struct bpf_d*) ; 
 int /*<<< orphan*/  FUNC3 (struct bpf_zbuf*,int) ; 

int
FUNC4(struct thread *td, struct bpf_d *d,
    struct bpf_zbuf *bz)
{
	struct zbuf *bzh;

	FUNC3(bz, sizeof(*bz));
	FUNC0(d);
	if (d->bd_hbuf == NULL && d->bd_slen != 0) {
		FUNC2(d);
		bzh = (struct zbuf *)d->bd_hbuf;
		bz->bz_bufa = (void *)bzh->zb_uaddr;
		bz->bz_buflen = d->bd_hlen;
	}
	FUNC1(d);
	return (0);
}