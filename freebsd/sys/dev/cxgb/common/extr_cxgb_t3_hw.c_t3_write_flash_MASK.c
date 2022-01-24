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
typedef  int /*<<< orphan*/  u8 ;
typedef  unsigned int u32 ;
typedef  int /*<<< orphan*/  adapter_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int*) ; 
 int EINVAL ; 
 int EIO ; 
 unsigned int SF_PROG_PAGE ; 
 unsigned int SF_SIZE ; 
 unsigned int SF_WR_ENABLE ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 unsigned int FUNC2 (unsigned int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int FUNC4 (unsigned int,unsigned int) ; 
 int FUNC5 (int /*<<< orphan*/ *,unsigned int,int,unsigned int) ; 
 unsigned int FUNC6 (unsigned int) ; 
 int FUNC7 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,unsigned int*,int) ; 

__attribute__((used)) static int FUNC8(adapter_t *adapter, unsigned int addr,
			  unsigned int n, const u8 *data,
			  int byte_oriented)
{
	int ret;
	u32 buf[64];
	unsigned int c, left, val, offset = addr & 0xff;

	if (addr + n > SF_SIZE || offset + n > 256)
		return -EINVAL;

	val = FUNC6(addr) | SF_PROG_PAGE;

	if ((ret = FUNC5(adapter, 1, 0, SF_WR_ENABLE)) != 0 ||
	    (ret = FUNC5(adapter, 4, 1, val)) != 0)
		return ret;

	for (left = n; left; left -= c) {
		c = FUNC4(left, 4U);
		val = *(const u32*)data;
		data += c;
		if (byte_oriented)
			val = FUNC2(val);

		ret = FUNC5(adapter, c, c != left, val);
		if (ret)
			return ret;
	}
	if ((ret = FUNC1(adapter, 5, 1)) != 0)
		return ret;

	/* Read the page to verify the write succeeded */
	ret = FUNC7(adapter, addr & ~0xff, FUNC0(buf), buf,
			    byte_oriented);
	if (ret)
		return ret;

	if (FUNC3(data - n, (u8 *)buf + offset, n))
		return -EIO;
	return 0;
}