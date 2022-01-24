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
typedef  int /*<<< orphan*/  uint16_t ;
struct isns_req {int ir_usedlen; scalar_t__ ir_buf; } ;
struct isns_hdr {int /*<<< orphan*/  ih_flags; int /*<<< orphan*/  ih_function; int /*<<< orphan*/  ih_version; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISNS_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct isns_req* FUNC1 () ; 

struct isns_req *
FUNC2(uint16_t func, uint16_t flags)
{
	struct isns_req *req;
	struct isns_hdr *hdr;

	req = FUNC1();
	req->ir_usedlen = sizeof(struct isns_hdr);
	hdr = (struct isns_hdr *)req->ir_buf;
	FUNC0(hdr->ih_version, ISNS_VERSION);
	FUNC0(hdr->ih_function, func);
	FUNC0(hdr->ih_flags, flags);
	return (req);
}