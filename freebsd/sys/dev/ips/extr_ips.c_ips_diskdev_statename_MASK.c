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
typedef  int u_int8_t ;

/* Variables and functions */
#define  IPS_LD_CRS 133 
#define  IPS_LD_DEGRADED 132 
#define  IPS_LD_FREE 131 
#define  IPS_LD_OFFLINE 130 
#define  IPS_LD_OKAY 129 
#define  IPS_LD_SYS 128 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 

__attribute__((used)) static const char* FUNC1(u_int8_t state)
{
	static char statebuf[20];
	switch(state){
		case IPS_LD_OFFLINE:
			return("OFFLINE");
			break;
		case IPS_LD_OKAY:
			return("OK");
			break;
		case IPS_LD_DEGRADED:
			return("DEGRADED");
			break;
		case IPS_LD_FREE:
			return("FREE");
			break;
		case IPS_LD_SYS:
			return("SYS");
			break;
		case IPS_LD_CRS:
			return("CRS");
			break;
	}
	FUNC0(statebuf,"UNKNOWN(0x%02x)", state);
	return(statebuf);
}