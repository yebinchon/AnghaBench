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
struct strbuf {int dummy; } ;
struct object_id {int dummy; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,...) ; 
 scalar_t__ has_symlinks ; 
 scalar_t__ FUNC2 (struct object_id const*) ; 
 int /*<<< orphan*/  FUNC3 (struct object_id const*) ; 
 char* FUNC4 (struct object_id const*,int*,unsigned long*) ; 
 char* FUNC5 (struct strbuf*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct strbuf*,char const*,int) ; 
 scalar_t__ FUNC7 (struct strbuf*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 

__attribute__((used)) static char *FUNC9(const struct object_id *oid, const char *path)
{
	char *data;
	if (FUNC2(oid)) {
		/* The symlink is unknown to Git so read from the filesystem */
		struct strbuf link = STRBUF_INIT;
		if (has_symlinks) {
			if (FUNC7(&link, path, FUNC8(path)))
				FUNC1(FUNC0("could not read symlink %s"), path);
		} else if (FUNC6(&link, path, 128))
			FUNC1(FUNC0("could not read symlink file %s"), path);

		data = FUNC5(&link, NULL);
	} else {
		enum object_type type;
		unsigned long size;
		data = FUNC4(oid, &type, &size);
		if (!data)
			FUNC1(FUNC0("could not read object %s for symlink %s"),
				FUNC3(oid), path);
	}

	return data;
}