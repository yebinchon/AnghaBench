#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tid_info {int /*<<< orphan*/  type; } ;
struct sockopt_data {int valsize; scalar_t__ kbuf; } ;
struct namedobj_instance {int dummy; } ;
struct ip_fw_chain {int dummy; } ;
struct TYPE_4__ {char* name; } ;
struct _ipfw_obj_header {TYPE_1__ ntlv; } ;
struct TYPE_5__ {char* algoname; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ ipfw_xtable_info ;
typedef  int /*<<< orphan*/  ip_fw3_opheader ;

/* Variables and functions */
 struct namedobj_instance* FUNC0 (struct ip_fw_chain*) ; 
 int EEXIST ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_fw_chain*) ; 
 scalar_t__ FUNC3 (char*) ; 
 int FUNC4 (struct ip_fw_chain*,struct tid_info*,char*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (struct namedobj_instance*,struct tid_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct _ipfw_obj_header*,struct tid_info*) ; 
 int FUNC7 (char*,int) ; 

__attribute__((used)) static int
FUNC8(struct ip_fw_chain *ch, ip_fw3_opheader *op3,
    struct sockopt_data *sd)
{
	struct _ipfw_obj_header *oh;
	ipfw_xtable_info *i;
	char *tname, *aname;
	struct tid_info ti;
	struct namedobj_instance *ni;

	if (sd->valsize != sizeof(*oh) + sizeof(ipfw_xtable_info))
		return (EINVAL);

	oh = (struct _ipfw_obj_header *)sd->kbuf;
	i = (ipfw_xtable_info *)(oh + 1);

	/*
	 * Verify user-supplied strings.
	 * Check for null-terminated/zero-length strings/
	 */
	tname = oh->ntlv.name;
	aname = i->algoname;
	if (FUNC3(tname) != 0 ||
	    FUNC7(aname, sizeof(i->algoname)) == sizeof(i->algoname))
		return (EINVAL);

	if (aname[0] == '\0') {
		/* Use default algorithm */
		aname = NULL;
	}

	FUNC6(oh, &ti);
	ti.type = i->type;

	ni = FUNC0(ch);

	FUNC1(ch);
	if (FUNC5(ni, &ti) != NULL) {
		FUNC2(ch);
		return (EEXIST);
	}
	FUNC2(ch);

	return (FUNC4(ch, &ti, aname, i, NULL, 0));
}