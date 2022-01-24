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
struct nlm_file_svid {scalar_t__ ns_ucred; int /*<<< orphan*/  ns_svid; int /*<<< orphan*/  ns_active; int /*<<< orphan*/  ns_refs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct nlm_file_svid*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_NLM ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct nlm_file_svid*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nlm_svid_allocator ; 
 int /*<<< orphan*/  nlm_svid_lock ; 
 int /*<<< orphan*/  ns_link ; 

__attribute__((used)) static void
FUNC7(struct nlm_file_svid *ns)
{

	FUNC5(&nlm_svid_lock);
	ns->ns_refs--;
	if (!ns->ns_refs) {
		FUNC0(!ns->ns_active, ("Freeing active SVID"));
		FUNC1(ns, ns_link);
		FUNC6(&nlm_svid_lock);
		FUNC4(nlm_svid_allocator, ns->ns_svid);
		if (ns->ns_ucred)
			FUNC2(ns->ns_ucred);
		FUNC3(ns, M_NLM);
	} else {
		FUNC6(&nlm_svid_lock);
	}
}