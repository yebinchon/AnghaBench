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
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct object_id const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,struct object_id*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,struct object_id*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  to_pack ; 

__attribute__((used)) static int FUNC4(const char *path, const struct object_id *oid, int flag, void *cb_data)
{
	struct object_id peeled;

	if (FUNC3(path, "refs/tags/") && /* is a tag? */
	    !FUNC2(path, &peeled)    && /* peelable? */
	    FUNC1(&to_pack, &peeled))      /* object packed? */
		FUNC0(oid);
	return 0;
}