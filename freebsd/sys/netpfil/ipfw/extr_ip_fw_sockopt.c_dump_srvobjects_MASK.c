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
struct sockopt_data {int valsize; } ;
struct ip_fw_chain {int dummy; } ;
typedef  int /*<<< orphan*/  ipfw_obj_ntlv ;
struct TYPE_2__ {int size; int count; int objsize; } ;
typedef  TYPE_1__ ipfw_obj_lheader ;
typedef  int /*<<< orphan*/  ip_fw3_opheader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ip_fw_chain*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  export_objhash_ntlv_internal ; 
 scalar_t__ FUNC3 (struct sockopt_data*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sockopt_data*) ; 

__attribute__((used)) static int
FUNC6(struct ip_fw_chain *chain, ip_fw3_opheader *op3,
    struct sockopt_data *sd)
{
	ipfw_obj_lheader *hdr;
	int count;

	hdr = (ipfw_obj_lheader *)FUNC3(sd, sizeof(*hdr));
	if (hdr == NULL)
		return (EINVAL);

	FUNC1(chain);
	count = FUNC4(FUNC0(chain));
	hdr->size = sizeof(ipfw_obj_lheader) + count * sizeof(ipfw_obj_ntlv);
	if (sd->valsize < hdr->size) {
		FUNC2(chain);
		return (ENOMEM);
	}
	hdr->count = count;
	hdr->objsize = sizeof(ipfw_obj_ntlv);
	if (count > 0)
		FUNC5(FUNC0(chain),
		    export_objhash_ntlv_internal, sd);
	FUNC2(chain);
	return (0);
}