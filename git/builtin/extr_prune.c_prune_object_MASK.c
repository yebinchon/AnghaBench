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
struct stat {scalar_t__ st_mtime; } ;
struct rev_info {int dummy; } ;
struct object_id {int dummy; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 scalar_t__ expire ; 
 scalar_t__ FUNC1 (struct object_id const*,struct rev_info*) ; 
 scalar_t__ FUNC2 (char const*,struct stat*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct object_id const*,int /*<<< orphan*/ *) ; 
 char* FUNC4 (struct object_id const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*) ; 
 scalar_t__ show_only ; 
 int /*<<< orphan*/  the_repository ; 
 char* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static int FUNC8(const struct object_id *oid, const char *fullpath,
			void *data)
{
	struct rev_info *revs = data;
	struct stat st;

	if (FUNC1(oid, revs))
		return 0;

	if (FUNC2(fullpath, &st)) {
		/* report errors, but do not stop pruning */
		FUNC0("Could not stat '%s'", fullpath);
		return 0;
	}
	if (st.st_mtime > expire)
		return 0;
	if (show_only || verbose) {
		enum object_type type = FUNC3(the_repository, oid,
							NULL);
		FUNC5("%s %s\n", FUNC4(oid),
		       (type > 0) ? FUNC6(type) : "unknown");
	}
	if (!show_only)
		FUNC7(fullpath);
	return 0;
}