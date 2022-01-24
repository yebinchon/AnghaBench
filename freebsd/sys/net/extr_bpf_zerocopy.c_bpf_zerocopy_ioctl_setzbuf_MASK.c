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
typedef  int /*<<< orphan*/  vm_offset_t ;
struct zbuf {int dummy; } ;
struct thread {int dummy; } ;
struct bpf_zbuf_header {int dummy; } ;
struct bpf_zbuf {scalar_t__ bz_buflen; int /*<<< orphan*/ * bz_bufb; int /*<<< orphan*/ * bz_bufa; } ;
struct bpf_d {scalar_t__ bd_bufmode; scalar_t__ bd_bufsize; scalar_t__ bd_hlen; scalar_t__ bd_slen; int /*<<< orphan*/ * bd_sbuf; int /*<<< orphan*/ * bd_fbuf; int /*<<< orphan*/ * bd_bif; int /*<<< orphan*/ * bd_hbuf; } ;
typedef  void* caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bpf_d*) ; 
 int /*<<< orphan*/  FUNC1 (struct bpf_d*) ; 
 scalar_t__ BPF_BUFMODE_ZBUF ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct zbuf*) ; 
 int FUNC4 (struct thread*,int /*<<< orphan*/ ,scalar_t__,struct zbuf**) ; 

int
FUNC5(struct thread *td, struct bpf_d *d,
    struct bpf_zbuf *bz)
{
	struct zbuf *zba, *zbb;
	int error;

	FUNC2(d->bd_bufmode == BPF_BUFMODE_ZBUF,
	    ("bpf_zerocopy_ioctl_setzbuf: not in zbuf mode"));

	/*
	 * Must set both buffers.  Cannot clear them.
	 */
	if (bz->bz_bufa == NULL || bz->bz_bufb == NULL)
		return (EINVAL);

	/*
	 * Buffers must have a size greater than 0.  Alignment and other size
	 * validity checking is done in zbuf_setup().
	 */
	if (bz->bz_buflen == 0)
		return (EINVAL);

	/*
	 * Allocate new buffers.
	 */
	error = FUNC4(td, (vm_offset_t)bz->bz_bufa, bz->bz_buflen,
	    &zba);
	if (error)
		return (error);
	error = FUNC4(td, (vm_offset_t)bz->bz_bufb, bz->bz_buflen,
	    &zbb);
	if (error) {
		FUNC3(zba);
		return (error);
	}

	/*
	 * We only allow buffers to be installed once, so atomically check
	 * that no buffers are currently installed and install new buffers.
	 */
	FUNC0(d);
	if (d->bd_hbuf != NULL || d->bd_sbuf != NULL || d->bd_fbuf != NULL ||
	    d->bd_bif != NULL) {
		FUNC1(d);
		FUNC3(zba);
		FUNC3(zbb);
		return (EINVAL);
	}

	/*
	 * Point BPF descriptor at buffers; initialize sbuf as zba so that
	 * it is always filled first in the sequence, per bpf(4).
	 */
	d->bd_fbuf = (caddr_t)zbb;
	d->bd_sbuf = (caddr_t)zba;
	d->bd_slen = 0;
	d->bd_hlen = 0;

	/*
	 * We expose only the space left in the buffer after the size of the
	 * shared management region.
	 */
	d->bd_bufsize = bz->bz_buflen - sizeof(struct bpf_zbuf_header);
	FUNC1(d);
	return (0);
}