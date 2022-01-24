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
struct mbuf {int dummy; } ;
struct mbchain {int /*<<< orphan*/  mb_mleft; struct mbuf* mb_cur; struct mbuf* mb_top; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct mbchain*,int) ; 

void
FUNC2(struct mbchain *mbp, struct mbuf *m)
{
	FUNC1(mbp, sizeof(*mbp));
	mbp->mb_top = mbp->mb_cur = m;
	mbp->mb_mleft = FUNC0(m);
}