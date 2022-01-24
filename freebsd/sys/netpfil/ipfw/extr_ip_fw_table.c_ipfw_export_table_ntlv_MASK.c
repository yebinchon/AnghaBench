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
typedef  int /*<<< orphan*/  uint16_t ;
struct sockopt_data {int dummy; } ;
struct namedobj_instance {int dummy; } ;
struct named_object {int /*<<< orphan*/  name; int /*<<< orphan*/  kidx; } ;
struct ip_fw_chain {int dummy; } ;
struct TYPE_3__ {int length; int /*<<< orphan*/  type; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; int /*<<< orphan*/  idx; TYPE_1__ head; } ;
typedef  TYPE_2__ ipfw_obj_ntlv ;

/* Variables and functions */
 struct namedobj_instance* FUNC0 (struct ip_fw_chain*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IPFW_TLV_TBL_NAME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (struct sockopt_data*,int) ; 
 struct named_object* FUNC3 (struct namedobj_instance*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int
FUNC5(struct ip_fw_chain *ch, uint16_t kidx,
    struct sockopt_data *sd)
{
	struct namedobj_instance *ni;
	struct named_object *no;
	ipfw_obj_ntlv *ntlv;

	ni = FUNC0(ch);

	no = FUNC3(ni, kidx);
	FUNC1(no != NULL, ("invalid table kidx passed"));

	ntlv = (ipfw_obj_ntlv *)FUNC2(sd, sizeof(*ntlv));
	if (ntlv == NULL)
		return (ENOMEM);

	ntlv->head.type = IPFW_TLV_TBL_NAME;
	ntlv->head.length = sizeof(*ntlv);
	ntlv->idx = no->kidx;
	FUNC4(ntlv->name, no->name, sizeof(ntlv->name));

	return (0);
}