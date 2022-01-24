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
struct bpf_d {int /*<<< orphan*/ * bd_fbuf; int /*<<< orphan*/ * bd_hbuf; int /*<<< orphan*/ * bd_sbuf; } ;
typedef  int /*<<< orphan*/ * caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_BPF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC1(struct bpf_d *d)
{

	if (d->bd_sbuf != NULL)
		FUNC0(d->bd_sbuf, M_BPF);
	if (d->bd_hbuf != NULL)
		FUNC0(d->bd_hbuf, M_BPF);
	if (d->bd_fbuf != NULL)
		FUNC0(d->bd_fbuf, M_BPF);

#ifdef INVARIANTS
	d->bd_sbuf = d->bd_hbuf = d->bd_fbuf = (caddr_t)~0;
#endif
}