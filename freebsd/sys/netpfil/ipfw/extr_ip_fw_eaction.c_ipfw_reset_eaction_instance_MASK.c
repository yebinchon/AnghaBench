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
struct named_object {scalar_t__ etlv; } ;
struct ip_fw_chain {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ip_fw_chain*) ; 
 int EINVAL ; 
 scalar_t__ IPFW_TLV_EACTION ; 
 int /*<<< orphan*/  FUNC1 (struct ip_fw_chain*) ; 
 struct named_object* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ip_fw_chain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC4(struct ip_fw_chain *ch, uint16_t eaction_id,
    uint16_t kidx)
{
	struct named_object *no;

	FUNC1(ch);
	no = FUNC2(FUNC0(ch), eaction_id);
	if (no == NULL || no->etlv != IPFW_TLV_EACTION)
		return (EINVAL);

	FUNC3(ch, eaction_id, kidx, 0);
	return (0);
}