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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  ti ;
struct tid_info {int /*<<< orphan*/  uidx; } ;
struct sockopt_data {int dummy; } ;
struct ip_fw_chain {int dummy; } ;
typedef  int /*<<< orphan*/  ip_fw3_opheader ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_fw_chain*) ; 
 int FUNC2 (struct ip_fw_chain*,struct tid_info*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct sockopt_data*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct tid_info*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(struct ip_fw_chain *ch, ip_fw3_opheader *op3,
    struct sockopt_data *sd)
{
	uint32_t *tbl;
	struct tid_info ti;
	size_t sz;
	int error;

	sz = sizeof(*op3) + sizeof(uint32_t);
	op3 = (ip_fw3_opheader *)FUNC3(sd, sz);
	if (op3 == NULL)
		return (EINVAL);

	tbl = (uint32_t *)(op3 + 1);
	FUNC4(&ti, 0, sizeof(ti));
	ti.uidx = *tbl;
	FUNC0(ch);
	error = FUNC2(ch, &ti, tbl);
	FUNC1(ch);
	return (error);
}