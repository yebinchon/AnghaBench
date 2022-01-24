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
typedef  scalar_t__ u32 ;
struct mc5 {unsigned int tcam_size; scalar_t__ mode; int /*<<< orphan*/ * adapter; } ;
typedef  int /*<<< orphan*/  adapter_t ;

/* Variables and functions */
 int /*<<< orphan*/  A_MC5_DB_SERVER_INDEX ; 
 scalar_t__ MC5_MODE_144_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct mc5 *mc5, u32 mask_array_base,
				u32 data_array_base, u32 write_cmd,
			        int addr_shift)
{
	unsigned int i;
	adapter_t *adap = mc5->adapter;

	/*
	 * We need the size of the TCAM data and mask arrays in terms of
	 * 72-bit entries.
	 */
	unsigned int size72 = mc5->tcam_size;
	unsigned int server_base = FUNC2(adap, A_MC5_DB_SERVER_INDEX);

	if (mc5->mode == MC5_MODE_144_BIT) {
		size72 *= 2;      /* 1 144-bit entry is 2 72-bit entries */
		server_base *= 2;
	}

	/* Clear the data array */
	FUNC0(adap, 0, 0, 0);
	for (i = 0; i < size72; i++)
		if (FUNC1(adap, data_array_base + (i << addr_shift),
			      write_cmd))
			return -1;

	/* Initialize the mask array. */
	for (i = 0; i < server_base; i++) {
		FUNC0(adap, 0x3fffffff, 0xfff80000, 0xff);
		if (FUNC1(adap, mask_array_base + (i << addr_shift),
			      write_cmd))
			return -1;
		i++;
		FUNC0(adap, 0xffffffff, 0xffffffff, 0xff);
		if (FUNC1(adap, mask_array_base + (i << addr_shift),
			      write_cmd))
			return -1;
	}

	FUNC0(adap,
		      mc5->mode == MC5_MODE_144_BIT ? 0xfffffff9 : 0xfffffffd,
		      0xffffffff, 0xff);
	for (; i < size72; i++)
		if (FUNC1(adap, mask_array_base + (i << addr_shift),
			      write_cmd))
			return -1;

	return 0;
}