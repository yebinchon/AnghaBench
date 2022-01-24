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
struct vdump_args {struct sockopt_data* sd; struct ip_fw_chain* ch; } ;
struct sockopt_data {int valsize; } ;
struct namedobj_instance {int dummy; } ;
struct ip_fw_chain {int dummy; } ;
struct _ipfw_obj_lheader {int size; int count; int objsize; } ;
typedef  int /*<<< orphan*/  ipfw_table_value ;
typedef  int /*<<< orphan*/  ipfw_obj_lheader ;
typedef  int /*<<< orphan*/  ip_fw3_opheader ;
typedef  int /*<<< orphan*/  da ;

/* Variables and functions */
 struct namedobj_instance* FUNC0 (struct ip_fw_chain*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  dump_tvalue ; 
 scalar_t__ FUNC3 (struct sockopt_data*,int) ; 
 int FUNC4 (struct namedobj_instance*) ; 
 int /*<<< orphan*/  FUNC5 (struct namedobj_instance*,int /*<<< orphan*/ ,struct vdump_args*) ; 
 int /*<<< orphan*/  FUNC6 (struct vdump_args*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC7(struct ip_fw_chain *ch, ip_fw3_opheader *op3,
    struct sockopt_data *sd)
{
	struct _ipfw_obj_lheader *olh;
	struct namedobj_instance *vi;
	struct vdump_args da;
	uint32_t count, size;

	olh = (struct _ipfw_obj_lheader *)FUNC3(sd,sizeof(*olh));
	if (olh == NULL)
		return (EINVAL);
	if (sd->valsize < olh->size)
		return (EINVAL);

	FUNC1(ch);
	vi = FUNC0(ch);

	count = FUNC4(vi);
	size = count * sizeof(ipfw_table_value) + sizeof(ipfw_obj_lheader);

	/* Fill in header regadless of buffer size */
	olh->count = count;
	olh->objsize = sizeof(ipfw_table_value);

	if (size > olh->size) {
		olh->size = size;
		FUNC2(ch);
		return (ENOMEM);
	}
	olh->size = size;

	/*
	 * Do the actual value dump
	 */
	FUNC6(&da, 0, sizeof(da));
	da.ch = ch;
	da.sd = sd;
	FUNC5(vi, dump_tvalue, &da);

	FUNC2(ch);

	return (0);
}