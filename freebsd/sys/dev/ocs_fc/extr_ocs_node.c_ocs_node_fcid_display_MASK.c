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
typedef  int uint32_t ;

/* Variables and functions */
#define  FC_ADDR_CONTROLLER 130 
#define  FC_ADDR_FABRIC 129 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
#define  FC_ADDR_NAMESERVER 128 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,...) ; 

void
FUNC3(uint32_t fc_id, char *buffer, uint32_t buffer_length)
{
	switch (fc_id) {
	case FC_ADDR_FABRIC:
		FUNC2(buffer, buffer_length, "fabric");
		break;
	case FC_ADDR_CONTROLLER:
		FUNC2(buffer, buffer_length, "fabctl");
		break;
	case FC_ADDR_NAMESERVER:
		FUNC2(buffer, buffer_length, "nserve");
		break;
	default:
		if (FUNC1(fc_id)) {
			FUNC2(buffer, buffer_length, "dctl%02x",
				FUNC0(fc_id));
		} else {
			FUNC2(buffer, buffer_length, "%06x", fc_id);
		}
		break;
	}

}