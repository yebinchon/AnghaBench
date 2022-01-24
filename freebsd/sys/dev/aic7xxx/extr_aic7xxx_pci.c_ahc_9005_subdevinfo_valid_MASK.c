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
typedef  int uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DEVID_9005_TYPE_HBA ; 
 int FUNC1 (int) ; 
#define  SUBID_9005_TYPE_CARD 131 
 scalar_t__ FUNC2 (int) ; 
#define  SUBID_9005_TYPE_LCCARD 130 
#define  SUBID_9005_TYPE_MB 129 
#define  SUBID_9005_TYPE_RAID 128 

__attribute__((used)) static int
FUNC3(uint16_t device, uint16_t vendor,
			  uint16_t subdevice, uint16_t subvendor)
{
	int result;

	/* Default to invalid. */
	result = 0;
	if (vendor == 0x9005
	 && subvendor == 0x9005
         && subdevice != device
         && FUNC2(subdevice) != 0) {

		switch (FUNC1(subdevice)) {
		case SUBID_9005_TYPE_MB:
			break;
		case SUBID_9005_TYPE_CARD:
		case SUBID_9005_TYPE_LCCARD:
			/*
			 * Currently only trust Adaptec cards to
			 * get the sub device info correct.
			 */
			if (FUNC0(device) == DEVID_9005_TYPE_HBA)
				result = 1;
			break;
		case SUBID_9005_TYPE_RAID:
			break;
		default:
			break;
		}
	}
	return (result);
}