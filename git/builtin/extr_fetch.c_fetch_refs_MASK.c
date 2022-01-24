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
struct transport {int dummy; } ;
struct ref {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ref*) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct transport*,struct ref*) ; 
 int /*<<< orphan*/  FUNC4 (struct transport*) ; 

__attribute__((used)) static int FUNC5(struct transport *transport, struct ref *ref_map)
{
	int ret = FUNC0(ref_map);
	if (ret) {
		FUNC1("fetch", "fetch_refs", the_repository);
		ret = FUNC3(transport, ref_map);
		FUNC2("fetch", "fetch_refs", the_repository);
	}
	if (!ret)
		/*
		 * Keep the new pack's ".keep" file around to allow the caller
		 * time to update refs to reference the new objects.
		 */
		return 0;
	FUNC4(transport);
	return ret;
}