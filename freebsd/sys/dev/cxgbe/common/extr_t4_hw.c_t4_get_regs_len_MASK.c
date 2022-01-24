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
struct adapter {int flags; } ;

/* Variables and functions */
#define  CHELSIO_T4 130 
#define  CHELSIO_T5 129 
#define  CHELSIO_T6 128 
 int /*<<< orphan*/  FUNC0 (struct adapter*,char*,unsigned int) ; 
 unsigned int FW_T4VF_REGMAP_SIZE ; 
 int IS_VF ; 
 unsigned int T4_REGMAP_SIZE ; 
 unsigned int T5_REGMAP_SIZE ; 
 unsigned int FUNC1 (struct adapter*) ; 

unsigned int FUNC2(struct adapter *adapter)
{
	unsigned int chip_version = FUNC1(adapter);

	switch (chip_version) {
	case CHELSIO_T4:
		if (adapter->flags & IS_VF)
			return FW_T4VF_REGMAP_SIZE;
		return T4_REGMAP_SIZE;

	case CHELSIO_T5:
	case CHELSIO_T6:
		if (adapter->flags & IS_VF)
			return FW_T4VF_REGMAP_SIZE;
		return T5_REGMAP_SIZE;
	}

	FUNC0(adapter,
		"Unsupported chip version %d\n", chip_version);
	return 0;
}