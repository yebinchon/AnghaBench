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
struct zbuf {TYPE_1__* zb_header; } ;
struct bpf_d {scalar_t__ bd_bufmode; scalar_t__ bd_hbuf; } ;
struct TYPE_2__ {scalar_t__ bzh_kernel_gen; int /*<<< orphan*/  bzh_user_gen; } ;

/* Variables and functions */
 scalar_t__ BPF_BUFMODE_ZBUF ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

int
FUNC2(struct bpf_d *d)
{
	struct zbuf *zb;

	FUNC0(d->bd_bufmode == BPF_BUFMODE_ZBUF,
	    ("bpf_zerocopy_canfreebuf: not in zbuf mode"));

	zb = (struct zbuf *)d->bd_hbuf;
	if (zb == NULL)
		return (0);
	if (zb->zb_header->bzh_kernel_gen ==
	    FUNC1(&zb->zb_header->bzh_user_gen))
		return (1);
	return (0);
}