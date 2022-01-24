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
typedef  int /*<<< orphan*/  uint8_t ;
struct ipmi_request {int dummy; } ;
struct ipmi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_IPMI ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (struct ipmi_request*,struct ipmi_device*,long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,size_t) ; 
 struct ipmi_request* FUNC1 (int,int /*<<< orphan*/ ,int) ; 

struct ipmi_request *
FUNC2(struct ipmi_device *dev, long msgid, uint8_t addr,
    uint8_t command, size_t requestlen, size_t replylen)
{
	struct ipmi_request *req;

	req = FUNC1(sizeof(struct ipmi_request) + requestlen + replylen,
	    M_IPMI, M_WAITOK | M_ZERO);
	FUNC0(req, dev, msgid, addr, command, requestlen, replylen);
	return (req);
}