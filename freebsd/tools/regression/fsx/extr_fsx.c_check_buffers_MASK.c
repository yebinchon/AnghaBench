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

/* Variables and functions */
 unsigned int badoff ; 
 void** good_buf ; 
 scalar_t__ FUNC0 (void**,void**,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 unsigned int FUNC3 (void**) ; 
 void** temp_buf ; 

void
FUNC4(unsigned offset, unsigned size)
{
	unsigned char c, t;
	unsigned i = 0;
	unsigned n = 0;
	unsigned op = 0;
	unsigned bad = 0;

	if (FUNC0(good_buf + offset, temp_buf, size) != 0) {
		FUNC1("READ BAD DATA: offset = 0x%x, size = 0x%x\n",
		    offset, size);
		FUNC1("OFFSET\tGOOD\tBAD\tRANGE\n");
		while (size > 0) {
			c = good_buf[offset];
			t = temp_buf[i];
			if (c != t) {
				if (n == 0) {
					bad = FUNC3(&temp_buf[i]);
					FUNC1("0x%5x\t0x%04x\t0x%04x", offset,
					    FUNC3(&good_buf[offset]), bad);
					op = temp_buf[offset & 1 ? i+1 : i];
				}
				n++;
				badoff = offset;
			}
			offset++;
			i++;
			size--;
		}
		if (n) {
			FUNC1("\t0x%5x\n", n);
			if (bad)
				FUNC1("operation# (mod 256) for the bad data may be %u\n", ((unsigned)op & 0xff));
			else
				FUNC1("operation# (mod 256) for the bad data unknown, check HOLE and EXTEND ops\n");
		} else
			FUNC1("????????????????\n");
		FUNC2(110);
	}
}