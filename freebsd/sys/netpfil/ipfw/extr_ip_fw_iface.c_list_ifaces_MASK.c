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
struct sockopt_data {int valsize; } ;
struct namedobj_instance {int dummy; } ;
struct ip_fw_chain {int dummy; } ;
struct dump_iface_args {struct sockopt_data* sd; struct ip_fw_chain* ch; } ;
struct _ipfw_obj_lheader {int size; int count; int objsize; } ;
typedef  int /*<<< orphan*/  ipfw_obj_lheader ;
typedef  int /*<<< orphan*/  ipfw_iface_info ;
typedef  int /*<<< orphan*/  ip_fw3_opheader ;

/* Variables and functions */
 struct namedobj_instance* FUNC0 (struct ip_fw_chain*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  export_iface_internal ; 
 scalar_t__ FUNC3 (struct sockopt_data*,int) ; 
 int FUNC4 (struct namedobj_instance*) ; 
 int /*<<< orphan*/  FUNC5 (struct namedobj_instance*,int /*<<< orphan*/ ,struct dump_iface_args*) ; 

__attribute__((used)) static int
FUNC6(struct ip_fw_chain *ch, ip_fw3_opheader *op3,
    struct sockopt_data *sd)
{
	struct namedobj_instance *ii;
	struct _ipfw_obj_lheader *olh;
	struct dump_iface_args da;
	uint32_t count, size;

	olh = (struct _ipfw_obj_lheader *)FUNC3(sd,sizeof(*olh));
	if (olh == NULL)
		return (EINVAL);
	if (sd->valsize < olh->size)
		return (EINVAL);

	FUNC1(ch);
	ii = FUNC0(ch);
	if (ii != NULL)
		count = FUNC4(ii);
	else
		count = 0;
	size = count * sizeof(ipfw_iface_info) + sizeof(ipfw_obj_lheader);

	/* Fill in header regadless of buffer size */
	olh->count = count;
	olh->objsize = sizeof(ipfw_iface_info);

	if (size > olh->size) {
		olh->size = size;
		FUNC2(ch);
		return (ENOMEM);
	}
	olh->size = size;

	da.ch = ch;
	da.sd = sd;

	if (ii != NULL)
		FUNC5(ii, export_iface_internal, &da);
	FUNC2(ch);

	return (0);
}