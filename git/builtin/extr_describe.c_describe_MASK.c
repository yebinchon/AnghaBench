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
struct commit {int dummy; } ;

/* Variables and functions */
 scalar_t__ OBJ_BLOB ; 
 struct strbuf STRBUF_INIT ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct commit*,int) ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC2 (struct object_id,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct object_id*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ FUNC6 (char const*,struct object_id*) ; 
 struct commit* FUNC7 (int /*<<< orphan*/ ,struct object_id*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,struct object_id*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static void FUNC11(const char *arg, int last_one)
{
	struct object_id oid;
	struct commit *cmit;
	struct strbuf sb = STRBUF_INIT;

	if (debug)
		FUNC5(stderr, FUNC0("describe %s\n"), arg);

	if (FUNC6(arg, &oid))
		FUNC4(FUNC0("Not a valid object name %s"), arg);
	cmit = FUNC7(the_repository, &oid, 1);

	if (cmit)
		FUNC3(&oid, &sb);
	else if (FUNC8(the_repository, &oid, NULL) == OBJ_BLOB)
		FUNC2(oid, &sb);
	else
		FUNC4(FUNC0("%s is neither a commit nor blob"), arg);

	FUNC9(sb.buf);

	if (!last_one)
		FUNC1(cmit, -1);

	FUNC10(&sb);
}