#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct sockopt_data {int dummy; } ;
struct ip_fw_chain {int dummy; } ;
struct dump_table_args {struct sockopt_data* sd; struct ip_fw_chain* ch; } ;
typedef  int /*<<< orphan*/  ipfw_xtable_info ;
struct TYPE_3__ {int count; int objsize; int size; } ;
typedef  TYPE_1__ ipfw_obj_lheader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ip_fw_chain*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  export_table_internal ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dump_table_args*) ; 

__attribute__((used)) static int
FUNC3(struct ip_fw_chain *ch, ipfw_obj_lheader *olh,
    struct sockopt_data *sd)
{
	uint32_t size;
	uint32_t count;
	struct dump_table_args dta;

	count = FUNC1(FUNC0(ch));
	size = count * sizeof(ipfw_xtable_info) + sizeof(ipfw_obj_lheader);

	/* Fill in header regadless of buffer size */
	olh->count = count;
	olh->objsize = sizeof(ipfw_xtable_info);

	if (size > olh->size) {
		olh->size = size;
		return (ENOMEM);
	}

	olh->size = size;

	dta.ch = ch;
	dta.sd = sd;

	FUNC2(FUNC0(ch), export_table_internal, &dta);

	return (0);
}