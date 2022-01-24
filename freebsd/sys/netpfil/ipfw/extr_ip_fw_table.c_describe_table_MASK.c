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
struct table_config {int dummy; } ;
struct sockopt_data {int dummy; } ;
struct ip_fw_chain {int dummy; } ;
struct _ipfw_obj_header {int dummy; } ;
typedef  int /*<<< orphan*/  ipfw_xtable_info ;
typedef  int /*<<< orphan*/  ip_fw3_opheader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ip_fw_chain*) ; 
 int EINVAL ; 
 int ESRCH ; 
 int /*<<< orphan*/  FUNC1 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC3 (struct ip_fw_chain*,struct table_config*,int /*<<< orphan*/ *) ; 
 struct table_config* FUNC4 (int /*<<< orphan*/ ,struct tid_info*) ; 
 scalar_t__ FUNC5 (struct sockopt_data*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct _ipfw_obj_header*,struct tid_info*) ; 

__attribute__((used)) static int
FUNC7(struct ip_fw_chain *ch, ip_fw3_opheader *op3,
    struct sockopt_data *sd)
{
	struct _ipfw_obj_header *oh;
	struct table_config *tc;
	struct tid_info ti;
	size_t sz;

	sz = sizeof(*oh) + sizeof(ipfw_xtable_info);
	oh = (struct _ipfw_obj_header *)FUNC5(sd, sz);
	if (oh == NULL)
		return (EINVAL);

	FUNC6(oh, &ti);

	FUNC1(ch);
	if ((tc = FUNC4(FUNC0(ch), &ti)) == NULL) {
		FUNC2(ch);
		return (ESRCH);
	}

	FUNC3(ch, tc, (ipfw_xtable_info *)(oh + 1));
	FUNC2(ch);

	return (0);
}