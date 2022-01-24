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
struct string_list {int dummy; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct string_list*,char*) ; 
 char* FUNC1 (char*,char const*) ; 

__attribute__((used)) static int FUNC2(const char *refname, const struct object_id *oid,
			    int flag, void *cb_data)
{
	struct string_list *refs = cb_data;
	char *ref = FUNC1("refs/bisect%s", refname);
	FUNC0(refs, ref);
	return 0;
}