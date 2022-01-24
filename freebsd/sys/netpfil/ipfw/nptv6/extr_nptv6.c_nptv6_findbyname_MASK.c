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
struct tid_info {int /*<<< orphan*/  type; int /*<<< orphan*/  uidx; } ;
struct named_object {int dummy; } ;
struct ip_fw_chain {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  IPFW_TLV_NPTV6_NAME ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct tid_info*,int /*<<< orphan*/ ,struct named_object**) ; 

__attribute__((used)) static int
FUNC3(struct ip_fw_chain *ch, struct tid_info *ti,
    struct named_object **pno)
{
	int err;

	err = FUNC2(FUNC0(ch), ti,
	    IPFW_TLV_NPTV6_NAME, pno);
	FUNC1("uidx %u, type %u, err %d", ti->uidx, ti->type, err);
	return (err);
}