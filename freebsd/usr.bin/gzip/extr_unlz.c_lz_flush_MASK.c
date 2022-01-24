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
struct lz_decoder {scalar_t__ pos; scalar_t__ spos; scalar_t__ obuf; int wrapped; scalar_t__ dict_size; int /*<<< orphan*/  ppos; int /*<<< orphan*/  fout; int /*<<< orphan*/  crc; } ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__,int,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,size_t) ; 

__attribute__((used)) static int
FUNC2(struct lz_decoder *lz)
{
	off_t offs = lz->pos - lz->spos;
	if (offs <= 0)
		return -1;

	size_t size = (size_t)offs;
	FUNC1(&lz->crc, lz->obuf + lz->spos, size);
	if (FUNC0(lz->obuf + lz->spos, 1, size, lz->fout) != size)
		return -1;

	lz->wrapped = lz->pos >= lz->dict_size;
	if (lz->wrapped) {
		lz->ppos += lz->pos;
		lz->pos = 0;
	}
	lz->spos = lz->pos;
	return 0;
}