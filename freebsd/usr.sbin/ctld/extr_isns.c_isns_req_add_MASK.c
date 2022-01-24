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
struct isns_tlv {int /*<<< orphan*/ * it_value; int /*<<< orphan*/  it_length; int /*<<< orphan*/  it_tag; } ;
struct isns_req {size_t ir_usedlen; int /*<<< orphan*/ * ir_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct isns_req*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void
FUNC4(struct isns_req *req, uint32_t tag, uint32_t len,
    const void *value)
{
	struct isns_tlv *tlv;
	uint32_t vlen;

	vlen = len + ((len & 3) ? (4 - (len & 3)) : 0);
	FUNC1(req, sizeof(*tlv) + vlen);
	tlv = (struct isns_tlv *)&req->ir_buf[req->ir_usedlen];
	FUNC0(tlv->it_tag, tag);
	FUNC0(tlv->it_length, vlen);
	FUNC2(tlv->it_value, value, len);
	if (vlen != len)
		FUNC3(&tlv->it_value[len], 0, vlen - len);
	req->ir_usedlen += sizeof(*tlv) + vlen;
}