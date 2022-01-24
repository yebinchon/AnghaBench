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
 unsigned long BLOCKSIZE ; 
 unsigned long block ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,char const*,unsigned long) ; 
 unsigned long offset ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,char const*,unsigned long) ; 

__attribute__((used)) static void FUNC3(const void *data, unsigned long size)
{
	const char *buf = data;

	if (offset) {
		unsigned long chunk = BLOCKSIZE - offset;
		if (size < chunk)
			chunk = size;
		FUNC0(block + offset, buf, chunk);
		size -= chunk;
		offset += chunk;
		buf += chunk;
		FUNC1();
	}
	while (size >= BLOCKSIZE) {
		FUNC2(1, buf, BLOCKSIZE);
		size -= BLOCKSIZE;
		buf += BLOCKSIZE;
	}
	if (size) {
		FUNC0(block + offset, buf, size);
		offset += size;
	}
}