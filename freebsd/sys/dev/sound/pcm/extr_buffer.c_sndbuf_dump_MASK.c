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
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int u_int32_t ;
struct snd_dbuf {int bufsize; int maxsize; int dl; int rp; int rl; int hp; int fmt; int spd; int blksz; int blkcnt; int flags; int /*<<< orphan*/  xrun; scalar_t__ prev_total; scalar_t__ total; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

void
FUNC1(struct snd_dbuf *b, char *s, u_int32_t what)
{
	FUNC0("%s: [", s);
	if (what & 0x01)
		FUNC0(" bufsize: %d, maxsize: %d", b->bufsize, b->maxsize);
	if (what & 0x02)
		FUNC0(" dl: %d, rp: %d, rl: %d, hp: %d", b->dl, b->rp, b->rl, b->hp);
	if (what & 0x04)
		FUNC0(" total: %ju, prev_total: %ju, xrun: %d", (uintmax_t)b->total, (uintmax_t)b->prev_total, b->xrun);
   	if (what & 0x08)
		FUNC0(" fmt: 0x%x, spd: %d", b->fmt, b->spd);
	if (what & 0x10)
		FUNC0(" blksz: %d, blkcnt: %d, flags: 0x%x", b->blksz, b->blkcnt, b->flags);
	FUNC0(" ]\n");
}