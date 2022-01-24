#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int ssize_t ;
struct TYPE_4__ {int resp_count; int resp_size; int resp_off; TYPE_1__* resp_biov; int /*<<< orphan*/  resp_error; int /*<<< orphan*/  req_txid; int /*<<< orphan*/  req_type; } ;
struct TYPE_3__ {scalar_t__ iov_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__ rinfo ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static int
FUNC3(uint32_t *retval)
{
	uint32_t *dp;
	ssize_t remlen;

	switch(rinfo.resp_count) {
	case 0:
		/* 4 x u32 header len + data */
		*retval = 4*sizeof(uint32_t) +
		    FUNC2(rinfo.resp_size, sizeof(uint32_t));
		rinfo.resp_count++;
		break;
	case 1:
		*retval = rinfo.req_type;
		rinfo.resp_count++;
		break;
	case 2:
		*retval = rinfo.req_txid;
		rinfo.resp_count++;
		break;
	case 3:
		*retval = rinfo.resp_error;
		rinfo.resp_count++;
		break;
	default:
		remlen = rinfo.resp_size - rinfo.resp_off;
		dp = (uint32_t *)
		    ((uint8_t *)rinfo.resp_biov->iov_base + rinfo.resp_off);
		if (remlen >= sizeof(uint32_t)) {
			*retval = *dp;
		} else if (remlen > 0) {
			*retval = FUNC1(dp, remlen);
		}
		rinfo.resp_off += sizeof(uint32_t);
		break;
	}

	if (rinfo.resp_count > 3 &&
	    rinfo.resp_off >= rinfo.resp_size) {
		FUNC0();
		return (1);
	}

	return (0);
}