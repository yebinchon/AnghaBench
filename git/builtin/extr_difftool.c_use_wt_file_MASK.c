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
struct strbuf {int /*<<< orphan*/  buf; int /*<<< orphan*/  len; } ;
struct stat {int /*<<< orphan*/  st_mode; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OBJ_BLOB ; 
 int /*<<< orphan*/  O_RDONLY ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct object_id*,int,struct stat*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct object_id*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC5 (struct object_id*,struct object_id*) ; 
 scalar_t__ FUNC6 (struct object_id*,struct object_id*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*) ; 
 int /*<<< orphan*/  the_index ; 

__attribute__((used)) static int FUNC10(const char *workdir, const char *name,
		       struct object_id *oid)
{
	struct strbuf buf = STRBUF_INIT;
	struct stat st;
	int use = 0;

	FUNC8(&buf, workdir);
	FUNC1(&buf, buf.len, name);

	if (!FUNC4(buf.buf, &st) && !FUNC0(st.st_mode)) {
		struct object_id wt_oid;
		int fd = FUNC7(buf.buf, O_RDONLY);

		if (fd >= 0 &&
		    !FUNC2(&the_index, &wt_oid, fd, &st, OBJ_BLOB, name, 0)) {
			if (FUNC3(oid)) {
				FUNC5(oid, &wt_oid);
				use = 1;
			} else if (FUNC6(oid, &wt_oid))
				use = 1;
		}
	}

	FUNC9(&buf);

	return use;
}