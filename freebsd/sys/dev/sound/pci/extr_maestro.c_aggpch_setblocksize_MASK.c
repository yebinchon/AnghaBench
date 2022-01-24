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
typedef  int u_int32_t ;
struct agg_chinfo {int speed; int stereo; int qs16; int blklen; int buflen; int /*<<< orphan*/  buffer; TYPE_1__* parent; } ;
typedef  int /*<<< orphan*/  kobj_t ;
struct TYPE_2__ {int bufsz; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static u_int32_t
FUNC7(kobj_t obj, void *data, u_int32_t blocksize)
{
	struct agg_chinfo *ch = data;
	int blkcnt;

	/* try to keep at least 20msec DMA space */
	blkcnt = (ch->speed << (ch->stereo + ch->qs16)) / (50 * blocksize);
	FUNC0(blkcnt, 2, ch->parent->bufsz / blocksize);

	if (FUNC3(ch->buffer) != blkcnt * blocksize) {
		FUNC4(ch->buffer, blkcnt, blocksize);
		blkcnt = FUNC1(ch->buffer);
		blocksize = FUNC2(ch->buffer);
	} else {
		FUNC5(ch->buffer, blkcnt);
		FUNC6(ch->buffer, blocksize);
	}

	ch->blklen = blocksize / 2;
	ch->buflen = blkcnt * blocksize / 2;
	return blocksize;
}