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
struct oidset {int dummy; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct oidset*,struct object_id const*) ; 
 scalar_t__ FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,struct object_id const*) ; 
 char* FUNC3 (char const*) ; 

__attribute__((used)) static int FUNC4(const char *path_full, const struct object_id *oid,
		       int flag, void *data)
{
	struct oidset *seen = data;
	const char *path = FUNC3(path_full);

	if (FUNC1(path, path_full))
		return 0;

	/*
	 * Advertise refs outside our current namespace as ".have"
	 * refs, so that the client can use them to minimize data
	 * transfer but will otherwise ignore them.
	 */
	if (!path) {
		if (FUNC0(seen, oid))
			return 0;
		path = ".have";
	} else {
		FUNC0(seen, oid);
	}
	FUNC2(path, oid);
	return 0;
}