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
typedef  int uint32_t ;
struct sockopt_data {int valsize; } ;
struct ipfw_sopt_handler {int /*<<< orphan*/  refcnt; int /*<<< orphan*/  version; int /*<<< orphan*/  opcode; } ;
struct ip_fw_chain {int dummy; } ;
struct _ipfw_obj_lheader {int size; int count; int objsize; } ;
struct TYPE_2__ {int /*<<< orphan*/  refcnt; int /*<<< orphan*/  version; int /*<<< orphan*/  opcode; } ;
typedef  TYPE_1__ ipfw_sopt_info ;
typedef  int /*<<< orphan*/  ipfw_obj_lheader ;
typedef  int /*<<< orphan*/  ip_fw3_opheader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct ipfw_sopt_handler* ctl3_handlers ; 
 int ctl3_hsize ; 
 scalar_t__ FUNC3 (struct sockopt_data*,int) ; 
 scalar_t__ FUNC4 (struct sockopt_data*,int) ; 

__attribute__((used)) static int
FUNC5(struct ip_fw_chain *chain, ip_fw3_opheader *op3,
    struct sockopt_data *sd)
{
	struct _ipfw_obj_lheader *olh;
	ipfw_sopt_info *i;
	struct ipfw_sopt_handler *sh;
	uint32_t count, n, size;

	olh = (struct _ipfw_obj_lheader *)FUNC3(sd,sizeof(*olh));
	if (olh == NULL)
		return (EINVAL);
	if (sd->valsize < olh->size)
		return (EINVAL);

	FUNC0();
	count = ctl3_hsize;
	size = count * sizeof(ipfw_sopt_info) + sizeof(ipfw_obj_lheader);

	/* Fill in header regadless of buffer size */
	olh->count = count;
	olh->objsize = sizeof(ipfw_sopt_info);

	if (size > olh->size) {
		olh->size = size;
		FUNC1();
		return (ENOMEM);
	}
	olh->size = size;

	for (n = 1; n <= count; n++) {
		i = (ipfw_sopt_info *)FUNC4(sd, sizeof(*i));
		FUNC2(i != NULL, ("previously checked buffer is not enough"));
		sh = &ctl3_handlers[n];
		i->opcode = sh->opcode;
		i->version = sh->version;
		i->refcnt = sh->refcnt;
	}
	FUNC1();

	return (0);
}