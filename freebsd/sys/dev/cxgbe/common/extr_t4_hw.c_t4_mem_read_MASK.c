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
typedef  int u32 ;
struct adapter {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EINVAL ; 
 int MEM_MC ; 
 int MEM_MC1 ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (struct adapter*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct adapter*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC4(struct adapter *adap, int mtype, u32 addr, u32 len,
		__be32 *buf)
{
	u32 pos, start, end, offset;
	int ret;

	/*
	 * Argument sanity checks ...
	 */
	if ((addr & 0x3) || (len & 0x3))
		return -EINVAL;

	/*
	 * The underlaying EDC/MC read routines read 64 bytes at a time so we
	 * need to round down the start and round up the end.  We'll start
	 * copying out of the first line at (addr - start) a word at a time.
	 */
	start = FUNC0(addr, 64);
	end = FUNC1(addr + len, 64);
	offset = (addr - start)/sizeof(__be32);

	for (pos = start; pos < end; pos += 64, offset = 0) {
		__be32 data[16];

		/*
		 * Read the chip's memory block and bail if there's an error.
		 */
		if ((mtype == MEM_MC) || (mtype == MEM_MC1))
			ret = FUNC3(adap, mtype - MEM_MC, pos, data, NULL);
		else
			ret = FUNC2(adap, mtype, pos, data, NULL);
		if (ret)
			return ret;

		/*
		 * Copy the data into the caller's memory buffer.
		 */
		while (offset < 16 && len > 0) {
			*buf++ = data[offset++];
			len -= sizeof(__be32);
		}
	}

	return 0;
}