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
typedef  int u_char ;
struct TYPE_3__ {int minute; int second; int frame; } ;
struct TYPE_4__ {int /*<<< orphan*/  lba; TYPE_1__ msf; } ;
struct cd_toc_entry {int control; TYPE_2__ addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int*,int*,int*) ; 
 scalar_t__ msf ; 
 int FUNC1 (int,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,...) ; 

__attribute__((used)) static void
FUNC4(struct cd_toc_entry *e, int lastflag)
{
	int block, next, len;
	u_char m, s, f;

	if (msf) {
		/* Print track start */
		FUNC3 ("%2d:%02d.%02d  ", e->addr.msf.minute,
			e->addr.msf.second, e->addr.msf.frame);

		block = FUNC1 (e->addr.msf.minute, e->addr.msf.second,
			e->addr.msf.frame);
	} else {
		block = FUNC2(e->addr.lba);
		FUNC0(block, &m, &s, &f);
		/* Print track start */
		FUNC3 ("%2d:%02d.%02d  ", m, s, f);
	}
	if (lastflag) {
		/* Last track -- print block */
		FUNC3 ("       -  %6d       -      -\n", block);
		return;
	}

	if (msf)
		next = FUNC1 (e[1].addr.msf.minute, e[1].addr.msf.second,
			e[1].addr.msf.frame);
	else
		next = FUNC2(e[1].addr.lba);
	len = next - block;
	/* Take into account a start offset time. */
	FUNC0 (len - 150, &m, &s, &f);

	/* Print duration, block, length, type */
	FUNC3 ("%2d:%02d.%02d  %6d  %6d  %5s\n", m, s, f, block, len,
		(e->control & 4) ? "data" : "audio");
}