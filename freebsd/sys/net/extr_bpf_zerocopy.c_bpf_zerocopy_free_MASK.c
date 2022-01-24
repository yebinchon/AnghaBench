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
struct zbuf {int dummy; } ;
struct bpf_d {scalar_t__ bd_bufmode; scalar_t__ bd_fbuf; scalar_t__ bd_hbuf; scalar_t__ bd_sbuf; } ;

/* Variables and functions */
 scalar_t__ BPF_BUFMODE_ZBUF ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct zbuf*) ; 

void
FUNC2(struct bpf_d *d)
{
	struct zbuf *zb;

	FUNC0(d->bd_bufmode == BPF_BUFMODE_ZBUF,
	    ("bpf_zerocopy_free: not in zbuf mode"));

	zb = (struct zbuf *)d->bd_sbuf;
	if (zb != NULL)
		FUNC1(zb);
	zb = (struct zbuf *)d->bd_hbuf;
	if (zb != NULL)
		FUNC1(zb);
	zb = (struct zbuf *)d->bd_fbuf;
	if (zb != NULL)
		FUNC1(zb);
}