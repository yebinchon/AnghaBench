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
typedef  int uint32_t ;
struct TYPE_2__ {int req_count; int req_size; int req_type; int req_txid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_1__ rinfo ; 

__attribute__((used)) static int
FUNC4(uint32_t value)
{

	int ret;

	ret = 0;

	switch (rinfo.req_count) {
	case 0:
		/* Verify size */
		if (value < 12) {
			FUNC3("msg size error");
			FUNC0(4);
		}
		rinfo.req_size = value;
		rinfo.req_count = 1;
		break;
	case 1:
		rinfo.req_type = value;
		rinfo.req_count++;
		break;
	case 2:
		rinfo.req_txid = value;
		rinfo.req_count++;
		ret = FUNC2();
		break;
	default:
		ret = FUNC1(value);
		break;
	}

	return (ret);
}