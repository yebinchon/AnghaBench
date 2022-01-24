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
struct fw_hdr {int /*<<< orphan*/  magic; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FW_HDR_MAGIC_BOOTSTRAP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct adapter*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,struct fw_hdr const*) ; 
 int FUNC3 (struct adapter*,unsigned int) ; 
 int FUNC4 (struct adapter*,int /*<<< orphan*/  const*,unsigned int) ; 

int FUNC5(struct adapter *adap, unsigned int mbox,
		  const u8 *fw_data, unsigned int size, int force)
{
	const struct fw_hdr *fw_hdr = (const struct fw_hdr *)fw_data;
	unsigned int bootstrap =
	    FUNC0(fw_hdr->magic) == FW_HDR_MAGIC_BOOTSTRAP;
	int ret;

	if (!FUNC2(adap, fw_hdr))
		return -EINVAL;

	if (!bootstrap) {
		ret = FUNC1(adap, mbox, force);
		if (ret < 0 && !force)
			return ret;
	}

	ret = FUNC4(adap, fw_data, size);
	if (ret < 0 || bootstrap)
		return ret;

	return FUNC3(adap, mbox);
}