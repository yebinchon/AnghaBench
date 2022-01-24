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
struct tid_info {int dummy; } ;
struct named_object {int dummy; } ;
struct ip_fw_chain {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  IPFW_TLV_NAT64STL_NAME ; 
 int FUNC1 (int /*<<< orphan*/ ,struct tid_info*,int /*<<< orphan*/ ,struct named_object**) ; 

__attribute__((used)) static int
FUNC2(struct ip_fw_chain *ch, struct tid_info *ti,
    struct named_object **pno)
{
	int err;

	err = FUNC1(FUNC0(ch), ti,
	    IPFW_TLV_NAT64STL_NAME, pno);
	return (err);
}