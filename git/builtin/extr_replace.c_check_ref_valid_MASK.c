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
struct strbuf {int /*<<< orphan*/  buf; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  git_replace_ref_base ; 
 int /*<<< orphan*/  FUNC3 (struct object_id*) ; 
 int /*<<< orphan*/  FUNC4 (struct object_id*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct object_id*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*) ; 

__attribute__((used)) static int FUNC8(struct object_id *object,
			    struct object_id *prev,
			    struct strbuf *ref,
			    int force)
{
	FUNC7(ref);
	FUNC6(ref, "%s%s", git_replace_ref_base, FUNC3(object));
	if (FUNC1(ref->buf, 0))
		return FUNC2(FUNC0("'%s' is not a valid ref name"), ref->buf);

	if (FUNC5(ref->buf, prev))
		FUNC4(prev);
	else if (!force)
		return FUNC2(FUNC0("replace ref '%s' already exists"), ref->buf);
	return 0;
}