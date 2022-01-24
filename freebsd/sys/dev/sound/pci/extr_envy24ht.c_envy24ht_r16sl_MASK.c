#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int16_t ;
struct sc_chinfo {int offset; int size; int num; int /*<<< orphan*/  buffer; scalar_t__ data; TYPE_1__* parent; } ;
struct TYPE_4__ {int /*<<< orphan*/  buffer; } ;
typedef  TYPE_2__ sample32_t ;
struct TYPE_3__ {TYPE_2__* rbuf; } ;

/* Variables and functions */
 int ENVY24HT_CHAN_REC_ADC1 ; 
 int ENVY24HT_REC_CHNUM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct sc_chinfo *ch)
{
	int length;
	sample32_t *dmabuf;
	u_int16_t *data;
	int src, dst, ssize, dsize, slot;
	int i;

	length = FUNC0(ch->buffer) / 4;
	dmabuf = ch->parent->rbuf;
	data = (u_int16_t *)ch->data;
	dst = FUNC1(ch->buffer) / 2;
	src = dst / 2 + ch->offset;
	dsize = ch->size / 2;
	ssize = ch->size / 8;
	slot = (ch->num - ENVY24HT_CHAN_REC_ADC1) * 2;

	for (i = 0; i < length; i++) {
		data[dst] = dmabuf[src * ENVY24HT_REC_CHNUM + slot].buffer;
		data[dst + 1] = dmabuf[src * ENVY24HT_REC_CHNUM + slot + 1].buffer;
		dst += 2;
		dst %= dsize;
		src++;
		src %= ssize;
	}
	
	return;
}