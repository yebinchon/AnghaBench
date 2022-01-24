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
 int EINVAL ; 
 unsigned char FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char) ; 
 size_t FUNC2 (unsigned char*) ; 

__attribute__((used)) static int
FUNC3(unsigned char *buf)
{
	size_t		i, len;
	unsigned char	byte;

	len = FUNC2(buf);
	for (i = 0; i < len / 2; i++) {
		if (!FUNC1(buf[2 * i]) || !FUNC1(buf[2 * i + 1]))
			return (EINVAL);

		byte = FUNC0(buf[2 * i]) << 4;
		byte += FUNC0(buf[2 * i + 1]);
		buf[i] = byte;
	}
	return (0);
}