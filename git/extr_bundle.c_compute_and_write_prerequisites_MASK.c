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
struct strbuf {scalar_t__ len; char* buf; } ;
struct rev_info {int dummy; } ;
struct object_id {int dummy; } ;
struct object {int /*<<< orphan*/  flags; } ;
struct child_process {int out; int git_cmd; int /*<<< orphan*/  args; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 scalar_t__ EOF ; 
 int /*<<< orphan*/  SHOWN ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  UNINTERESTING ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct rev_info*,struct object*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,char*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct child_process*) ; 
 int /*<<< orphan*/  FUNC7 (char*,struct object_id*) ; 
 struct object* FUNC8 (struct object_id*,char*) ; 
 scalar_t__ FUNC9 (struct child_process*) ; 
 scalar_t__ FUNC10 (struct strbuf*,int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC13 (int,char*) ; 

__attribute__((used)) static int FUNC14(int bundle_fd,
					   struct rev_info *revs,
					   int argc, const char **argv)
{
	struct child_process rls = CHILD_PROCESS_INIT;
	struct strbuf buf = STRBUF_INIT;
	FILE *rls_fout;
	int i;

	FUNC3(&rls.args,
			 "rev-list", "--boundary", "--pretty=oneline",
			 NULL);
	for (i = 1; i < argc; i++)
		FUNC2(&rls.args, argv[i]);
	rls.out = -1;
	rls.git_cmd = 1;
	if (FUNC9(&rls))
		return -1;
	rls_fout = FUNC13(rls.out, "r");
	while (FUNC10(&buf, rls_fout, '\n') != EOF) {
		struct object_id oid;
		if (buf.len > 0 && buf.buf[0] == '-') {
			FUNC12(bundle_fd, buf.buf, buf.len);
			if (!FUNC7(buf.buf + 1, &oid)) {
				struct object *object = FUNC8(&oid,
									    buf.buf);
				object->flags |= UNINTERESTING;
				FUNC1(revs, object, buf.buf);
			}
		} else if (!FUNC7(buf.buf, &oid)) {
			struct object *object = FUNC8(&oid,
								    buf.buf);
			object->flags |= SHOWN;
		}
	}
	FUNC11(&buf);
	FUNC5(rls_fout);
	if (FUNC6(&rls))
		return FUNC4(FUNC0("rev-list died"));
	return 0;
}