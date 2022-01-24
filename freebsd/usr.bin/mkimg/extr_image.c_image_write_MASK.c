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
struct TYPE_3__ {int /*<<< orphan*/  ptr; } ;
struct TYPE_4__ {TYPE_1__ mem; } ;
struct chunk {scalar_t__ ch_type; TYPE_2__ ch_u; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  lba_t ;

/* Variables and functions */
 scalar_t__ CH_TYPE_FILE ; 
 scalar_t__ CH_TYPE_MEMORY ; 
 scalar_t__ CH_TYPE_ZEROES ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct chunk* FUNC1 (int /*<<< orphan*/ ) ; 
 struct chunk* FUNC2 (struct chunk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,int) ; 
 int secsz ; 

int
FUNC5(lba_t blk, void *buf, ssize_t len)
{
	struct chunk *ch;

	while (len > 0) {
		if (!FUNC3(buf)) {
			ch = FUNC1(blk);
			if (ch == NULL)
				return (ENXIO);
			/* We may not be able to write to files. */
			if (ch->ch_type == CH_TYPE_FILE)
				return (EINVAL);
			if (ch->ch_type == CH_TYPE_ZEROES) {
				ch = FUNC2(ch, blk);
				if (ch == NULL)
					return (ENOMEM);
			}
			FUNC0(ch->ch_type == CH_TYPE_MEMORY);
			FUNC4(ch->ch_u.mem.ptr, buf, secsz);
		}
		blk++;
		buf = (char *)buf + secsz;
		len--;
	}
	return (0);
}