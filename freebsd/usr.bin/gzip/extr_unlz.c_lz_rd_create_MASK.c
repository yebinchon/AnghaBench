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
typedef  int uint8_t ;
struct lz_range_decoder {int code; int /*<<< orphan*/ * fp; int /*<<< orphan*/  range; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(struct lz_range_decoder *rd, FILE *fp)
{
	rd->fp = fp;
	rd->code = 0;
	rd->range = ~0;
	for (int i = 0; i < 5; i++)
		rd->code = (rd->code << 8) | (uint8_t)FUNC1(rd->fp);
	return FUNC0(rd->fp) ? -1 : 0;
}