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
struct isns_req {int ir_usedlen; scalar_t__ ir_buf; } ;
struct isns_hdr {int /*<<< orphan*/  ih_sequence; int /*<<< orphan*/  ih_transaction; int /*<<< orphan*/  ih_flags; int /*<<< orphan*/  ih_length; } ;

/* Variables and functions */
 int ISNS_FLAG_FIRST ; 
 int ISNS_FLAG_LAST ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int,scalar_t__,int) ; 

int
FUNC3(int s, struct isns_req *req)
{
	struct isns_hdr *hdr;
	int res;

	hdr = (struct isns_hdr *)req->ir_buf;
	FUNC1(hdr->ih_length, req->ir_usedlen - sizeof(*hdr));
	FUNC1(hdr->ih_flags, FUNC0(hdr->ih_flags) |
	    ISNS_FLAG_LAST | ISNS_FLAG_FIRST);
	FUNC1(hdr->ih_transaction, 0);
	FUNC1(hdr->ih_sequence, 0);

	res = FUNC2(s, req->ir_buf, req->ir_usedlen);
	return ((res < 0) ? -1 : 0);
}