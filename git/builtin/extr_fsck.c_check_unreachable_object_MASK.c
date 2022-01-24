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
struct object {int flags; scalar_t__ type; int /*<<< orphan*/  oid; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int HAS_OBJ ; 
 scalar_t__ OBJ_BLOB ; 
 scalar_t__ OBJ_COMMIT ; 
 int USED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (struct object*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct object*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC11 (char*) ; 
 scalar_t__ show_dangling ; 
 scalar_t__ show_unreachable ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ write_lost_and_found ; 
 int /*<<< orphan*/ * FUNC13 (char*,char*) ; 

__attribute__((used)) static void FUNC14(struct object *obj)
{
	/*
	 * Missing unreachable object? Ignore it. It's not like
	 * we miss it (since it can't be reached), nor do we want
	 * to complain about it being unreachable (since it does
	 * not exist).
	 */
	if (!(obj->flags & HAS_OBJ))
		return;

	/*
	 * Unreachable object that exists? Show it if asked to,
	 * since this is something that is prunable.
	 */
	if (show_unreachable) {
		FUNC10(FUNC0("unreachable %s %s"), FUNC9(obj),
			  FUNC1(obj));
		return;
	}

	/*
	 * "!USED" means that nothing at all points to it, including
	 * other unreachable objects. In other words, it's the "tip"
	 * of some set of unreachable objects, usually a commit that
	 * got dropped.
	 *
	 * Such starting points are more interesting than some random
	 * set of unreachable objects, so we show them even if the user
	 * hasn't asked for _all_ unreachable objects. If you have
	 * deleted a branch by mistake, this is a prime candidate to
	 * start looking at, for example.
	 */
	if (!(obj->flags & USED)) {
		if (show_dangling)
			FUNC10(FUNC0("dangling %s %s"), FUNC9(obj),
				  FUNC1(obj));
		if (write_lost_and_found) {
			char *filename = FUNC8("lost-found/%s/%s",
				obj->type == OBJ_COMMIT ? "commit" : "other",
				FUNC1(obj));
			FILE *f;

			if (FUNC11(filename)) {
				FUNC3(FUNC0("could not create lost-found"));
				FUNC7(filename);
				return;
			}
			f = FUNC13(filename, "w");
			if (obj->type == OBJ_BLOB) {
				if (FUNC12(FUNC5(f), &obj->oid, NULL, 1))
					FUNC2(FUNC0("could not write '%s'"), filename);
			} else
				FUNC6(f, "%s\n", FUNC1(obj));
			if (FUNC4(f))
				FUNC2(FUNC0("could not finish '%s'"),
					  filename);
			FUNC7(filename);
		}
		return;
	}

	/*
	 * Otherwise? It's there, it's unreachable, and some other unreachable
	 * object points to it. Ignore it - it's not interesting, and we showed
	 * all the interesting cases above.
	 */
}