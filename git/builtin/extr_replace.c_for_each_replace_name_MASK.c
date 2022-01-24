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
struct strbuf {size_t len; char* buf; } ;
struct object_id {int dummy; } ;
typedef  scalar_t__ (* each_replace_name_fn ) (char const*,char*,struct object_id*) ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 scalar_t__ FUNC2 (char const*,struct object_id*) ; 
 int /*<<< orphan*/  git_replace_ref_base ; 
 int /*<<< orphan*/  FUNC3 (struct object_id*) ; 
 scalar_t__ FUNC4 (char*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,size_t) ; 

__attribute__((used)) static int FUNC8(const char **argv, each_replace_name_fn fn)
{
	const char **p, *full_hex;
	struct strbuf ref = STRBUF_INIT;
	size_t base_len;
	int had_error = 0;
	struct object_id oid;

	FUNC5(&ref, git_replace_ref_base);
	base_len = ref.len;

	for (p = argv; *p; p++) {
		if (FUNC2(*p, &oid)) {
			FUNC1("failed to resolve '%s' as a valid ref", *p);
			had_error = 1;
			continue;
		}

		FUNC7(&ref, base_len);
		FUNC5(&ref, FUNC3(&oid));
		full_hex = ref.buf + base_len;

		if (FUNC4(ref.buf, &oid)) {
			FUNC1(FUNC0("replace ref '%s' not found"), full_hex);
			had_error = 1;
			continue;
		}
		if (fn(full_hex, ref.buf, &oid))
			had_error = 1;
	}
	FUNC6(&ref);
	return had_error;
}