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
typedef  int /*<<< orphan*/  uint16_t ;
struct ip_fw_chain {int dummy; } ;
struct ip_fw {int refcnt; } ;
struct TYPE_2__ {int refcnt; } ;
struct dyn_state_obj {TYPE_1__ no; } ;
struct dyn_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct dyn_state_obj* FUNC2 (struct ip_fw_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ip_fw_chain*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct ip_fw*) ; 

__attribute__((used)) static void
FUNC5(struct ip_fw_chain *ch, struct dyn_data *data,
    struct ip_fw *rule, uint16_t kidx)
{
	struct dyn_state_obj *obj;

	FUNC0(ch);
	FUNC1(kidx != 0);

	obj = FUNC2(ch, kidx);
	if (obj->no.refcnt == 1)
		FUNC3(ch, &obj->no);
	else
		obj->no.refcnt--;

	if (--rule->refcnt == 1)
		FUNC4(rule);
}