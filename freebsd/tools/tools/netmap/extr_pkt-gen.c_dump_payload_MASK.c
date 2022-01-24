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
typedef  int uint8_t ;
struct netmap_ring {TYPE_1__* slot; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int buf_idx; int flags; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned char const) ; 
 int /*<<< orphan*/  FUNC1 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,unsigned char const) ; 

__attribute__((used)) static void
FUNC4(const char *_p, int len, struct netmap_ring *ring, int cur)
{
	char buf[128];
	int i, j, i0;
	const unsigned char *p = (const unsigned char *)_p;

	/* get the length in ASCII of the length of the packet. */

	FUNC2("ring %p cur %5d [buf %6d flags 0x%04x len %5d]\n",
		ring, cur, ring->slot[cur].buf_idx,
		ring->slot[cur].flags, len);
	/* hexdump routine */
	for (i = 0; i < len; ) {
		FUNC1(buf, ' ', sizeof(buf));
		FUNC3(buf, "%5d: ", i);
		i0 = i;
		for (j=0; j < 16 && i < len; i++, j++)
			FUNC3(buf+7+j*3, "%02x ", (uint8_t)(p[i]));
		i = i0;
		for (j=0; j < 16 && i < len; i++, j++)
			FUNC3(buf+7+j + 48, "%c",
				FUNC0(p[i]) ? p[i] : '.');
		FUNC2("%s\n", buf);
	}
}