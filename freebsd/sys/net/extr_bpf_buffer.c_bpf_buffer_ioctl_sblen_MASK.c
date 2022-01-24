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
typedef  scalar_t__ u_int ;
struct bpf_d {void* bd_fbuf; void* bd_sbuf; scalar_t__ bd_hlen; scalar_t__ bd_slen; int /*<<< orphan*/ * bd_hbuf; scalar_t__ bd_bufsize; int /*<<< orphan*/ * bd_bif; } ;
typedef  void* caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bpf_d*) ; 
 int /*<<< orphan*/  FUNC1 (struct bpf_d*) ; 
 scalar_t__ BPF_MINBUFSIZE ; 
 int EINVAL ; 
 int /*<<< orphan*/  M_BPF ; 
 int /*<<< orphan*/  M_WAITOK ; 
 scalar_t__ bpf_maxbufsize ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC4(struct bpf_d *d, u_int *i)
{
	u_int size;
	caddr_t fbuf, sbuf;

	size = *i;
	if (size > bpf_maxbufsize)
		*i = size = bpf_maxbufsize;
	else if (size < BPF_MINBUFSIZE)
		*i = size = BPF_MINBUFSIZE;

	/* Allocate buffers immediately */
	fbuf = (caddr_t)FUNC3(size, M_BPF, M_WAITOK);
	sbuf = (caddr_t)FUNC3(size, M_BPF, M_WAITOK);

	FUNC0(d);
	if (d->bd_bif != NULL) {
		/* Interface already attached, unable to change buffers */
		FUNC1(d);
		FUNC2(fbuf, M_BPF);
		FUNC2(sbuf, M_BPF);
		return (EINVAL);
	}

	/* Free old buffers if set */
	if (d->bd_fbuf != NULL)
		FUNC2(d->bd_fbuf, M_BPF);
	if (d->bd_sbuf != NULL)
		FUNC2(d->bd_sbuf, M_BPF);

	/* Fill in new data */
	d->bd_bufsize = size;
	d->bd_fbuf = fbuf;
	d->bd_sbuf = sbuf;

	d->bd_hbuf = NULL;
	d->bd_slen = 0;
	d->bd_hlen = 0;

	FUNC1(d);
	return (0);
}