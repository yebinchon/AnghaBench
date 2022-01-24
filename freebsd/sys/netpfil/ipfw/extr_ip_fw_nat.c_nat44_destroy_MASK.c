#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sockopt_data {int valsize; scalar_t__ kbuf; } ;
struct ip_fw_chain {int /*<<< orphan*/  nat; } ;
struct cfg_nat {int /*<<< orphan*/  id; } ;
struct TYPE_4__ {int length; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; TYPE_1__ head; } ;
typedef  TYPE_2__ ipfw_obj_ntlv ;
struct TYPE_6__ {TYPE_2__ ntlv; } ;
typedef  TYPE_3__ ipfw_obj_header ;
typedef  int /*<<< orphan*/  ip_fw3_opheader ;

/* Variables and functions */
 int EINVAL ; 
 int ESRCH ; 
 int /*<<< orphan*/  FUNC0 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC3 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC4 (struct cfg_nat*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _next ; 
 int /*<<< orphan*/  FUNC5 (struct ip_fw_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cfg_nat*) ; 
 struct cfg_nat* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC9(struct ip_fw_chain *chain, ip_fw3_opheader *op3,
    struct sockopt_data *sd)
{
	ipfw_obj_header *oh;
	struct cfg_nat *ptr;
	ipfw_obj_ntlv *ntlv;

	/* Check minimum header size */
	if (sd->valsize < sizeof(*oh))
		return (EINVAL);

	oh = (ipfw_obj_header *)sd->kbuf;

	/* Basic length checks for TLVs */
	if (oh->ntlv.head.length != sizeof(oh->ntlv))
		return (EINVAL);

	ntlv = &oh->ntlv;
	/* Check if name is properly terminated */
	if (FUNC8(ntlv->name, sizeof(ntlv->name)) == sizeof(ntlv->name))
		return (EINVAL);

	FUNC0(chain);
	ptr = FUNC7(&chain->nat, ntlv->name);
	if (ptr == NULL) {
		FUNC1(chain);
		return (ESRCH);
	}
	FUNC2(chain);
	FUNC4(ptr, _next);
	FUNC5(chain, ptr->id);
	FUNC3(chain);
	FUNC1(chain);

	FUNC6(ptr);

	return (0);
}