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
typedef  int u_int16_t ;
struct ucred {int cr_uid; scalar_t__ cr_gid; } ;
struct rule {scalar_t__ r_protocol; int r_port; scalar_t__ r_idtype; scalar_t__ r_id; } ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  PRIV_NETINET_RESERVEDPORT ; 
 scalar_t__ RULE_GID ; 
 scalar_t__ RULE_PROTO_TCP ; 
 scalar_t__ RULE_PROTO_UDP ; 
 scalar_t__ RULE_UID ; 
 int SOCK_DGRAM ; 
 int SOCK_STREAM ; 
 struct rule* FUNC0 (int /*<<< orphan*/ *) ; 
 struct rule* FUNC1 (struct rule*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__,struct ucred*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__) ; 
 int portacl_port_high ; 
 scalar_t__ portacl_suser_exempt ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int,int,int) ; 
 int FUNC7 (struct ucred*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  r_entries ; 
 int /*<<< orphan*/  rule_head ; 
 int /*<<< orphan*/  rule_mtx ; 

__attribute__((used)) static int
FUNC8(struct ucred *cred, int family, int type, u_int16_t port)
{
	struct rule *rule;
	int error;

#if 0
	printf("Check requested for euid %d, family %d, type %d, port %d\n",
	    cred->cr_uid, family, type, port);
#endif

	if (port > portacl_port_high)
		return (0);

	error = EPERM;
	FUNC3(&rule_mtx);
	for (rule = FUNC0(&rule_head);
	    rule != NULL;
	    rule = FUNC1(rule, r_entries)) {
		if (type == SOCK_DGRAM && rule->r_protocol != RULE_PROTO_UDP)
			continue;
		if (type == SOCK_STREAM && rule->r_protocol != RULE_PROTO_TCP)
			continue;
		if (port != rule->r_port)
			continue;
		if (rule->r_idtype == RULE_UID) {
			if (cred->cr_uid == rule->r_id) {
				error = 0;
				break;
			}
		} else if (rule->r_idtype == RULE_GID) {
			if (cred->cr_gid == rule->r_id) {
				error = 0;
				break;
			} else if (FUNC2(rule->r_id, cred)) {
				error = 0;
				break;
			}
		} else
			FUNC5("rules_check: unknown rule type %d",
			    rule->r_idtype);
	}
	FUNC4(&rule_mtx);

	if (error != 0 && portacl_suser_exempt != 0)
		error = FUNC7(cred, PRIV_NETINET_RESERVEDPORT);

	return (error);
}