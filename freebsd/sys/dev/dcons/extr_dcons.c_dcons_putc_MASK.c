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
struct dcons_ch {int* buf; size_t pos; size_t size; int /*<<< orphan*/ * ptr; int /*<<< orphan*/  gen; } ;
struct dcons_softc {struct dcons_ch o; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dcons_ch*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2(struct dcons_softc *dc, int c)
{
	struct dcons_ch *ch;

	ch = &dc->o;

	ch->buf[ch->pos] = c;
	ch->pos ++;
	if (ch->pos >= ch->size) {
		ch->gen = FUNC1(ch->gen);
		ch->pos = 0;
	}
	*ch->ptr = FUNC0(ch);
}