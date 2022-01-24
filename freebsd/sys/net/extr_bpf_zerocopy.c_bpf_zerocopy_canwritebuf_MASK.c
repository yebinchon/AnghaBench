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
struct zbuf {int zb_flags; } ;
struct bpf_d {scalar_t__ bd_bufmode; scalar_t__ bd_sbuf; } ;

/* Variables and functions */
 scalar_t__ BPF_BUFMODE_ZBUF ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int ZBUF_FLAG_ASSIGNED ; 

int
FUNC1(struct bpf_d *d)
{
	struct zbuf *zb;

	FUNC0(d->bd_bufmode == BPF_BUFMODE_ZBUF,
	    ("bpf_zerocopy_canwritebuf: not in zbuf mode"));

	zb = (struct zbuf *)d->bd_sbuf;
	FUNC0(zb != NULL, ("bpf_zerocopy_canwritebuf: bd_sbuf NULL"));

	if (zb->zb_flags & ZBUF_FLAG_ASSIGNED)
		return (0);
	return (1);
}