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
#define  RT2560_RF_2522 134 
#define  RT2560_RF_2523 133 
#define  RT2560_RF_2524 132 
#define  RT2560_RF_2525 131 
#define  RT2560_RF_2525E 130 
#define  RT2560_RF_2526 129 
#define  RT2560_RF_5222 128 

__attribute__((used)) static const char *
FUNC0(int rev)
{
	switch (rev) {
	case RT2560_RF_2522:	return "RT2522";
	case RT2560_RF_2523:	return "RT2523";
	case RT2560_RF_2524:	return "RT2524";
	case RT2560_RF_2525:	return "RT2525";
	case RT2560_RF_2525E:	return "RT2525e";
	case RT2560_RF_2526:	return "RT2526";
	case RT2560_RF_5222:	return "RT5222";
	default:		return "unknown";
	}
}