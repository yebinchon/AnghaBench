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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {unsigned int sf_size; } ;
struct adapter {TYPE_1__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  A_SF_OP ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,char*,unsigned int) ; 
 int EINVAL ; 
 int EIO ; 
 int SF_PAGE_SIZE ; 
 unsigned int SF_PROG_PAGE ; 
 unsigned int SF_WR_ENABLE ; 
 unsigned int FUNC2 (unsigned int) ; 
 int FUNC3 (struct adapter*,int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int FUNC5 (unsigned int,unsigned int) ; 
 int FUNC6 (struct adapter*,unsigned int,int,int,unsigned int) ; 
 unsigned int FUNC7 (unsigned int) ; 
 int FUNC8 (struct adapter*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC10(struct adapter *adapter, unsigned int addr,
			  unsigned int n, const u8 *data, int byte_oriented)
{
	int ret;
	u32 buf[SF_PAGE_SIZE / 4];
	unsigned int i, c, left, val, offset = addr & 0xff;

	if (addr >= adapter->params.sf_size || offset + n > SF_PAGE_SIZE)
		return -EINVAL;

	val = FUNC7(addr) | SF_PROG_PAGE;

	if ((ret = FUNC6(adapter, 1, 0, 1, SF_WR_ENABLE)) != 0 ||
	    (ret = FUNC6(adapter, 4, 1, 1, val)) != 0)
		goto unlock;

	for (left = n; left; left -= c) {
		c = FUNC5(left, 4U);
		for (val = 0, i = 0; i < c; ++i)
			val = (val << 8) + *data++;

		if (!byte_oriented)
			val = FUNC2(val);

		ret = FUNC6(adapter, c, c != left, 1, val);
		if (ret)
			goto unlock;
	}
	ret = FUNC3(adapter, 8, 1);
	if (ret)
		goto unlock;

	FUNC9(adapter, A_SF_OP, 0);    /* unlock SF */

	/* Read the page to verify the write succeeded */
	ret = FUNC8(adapter, addr & ~0xff, FUNC0(buf), buf,
			    byte_oriented);
	if (ret)
		return ret;

	if (FUNC4(data - n, (u8 *)buf + offset, n)) {
		FUNC1(adapter,
			"failed to correctly write the flash page at %#x\n",
			addr);
		return -EIO;
	}
	return 0;

unlock:
	FUNC9(adapter, A_SF_OP, 0);    /* unlock SF */
	return ret;
}