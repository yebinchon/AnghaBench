#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct patch {char const* old_oid_prefix; struct fragment* fragments; } ;
struct object_id {int dummy; } ;
struct fragment {int oldpos; int oldlines; int /*<<< orphan*/  size; int /*<<< orphan*/  patch; int /*<<< orphan*/  next; } ;
typedef  int /*<<< orphan*/  heading ;
struct TYPE_2__ {int hexsz; } ;

/* Variables and functions */
 int FUNC0 (char*,struct object_id*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,char const*) ; 
 TYPE_1__* the_hash_algo ; 

__attribute__((used)) static int FUNC3(struct patch *p, struct object_id *oid)
{
	/*
	 * A usable gitlink patch has only one fragment (hunk) that looks like:
	 * @@ -1 +1 @@
	 * -Subproject commit <old sha1>
	 * +Subproject commit <new sha1>
	 * or
	 * @@ -1 +0,0 @@
	 * -Subproject commit <old sha1>
	 * for a removal patch.
	 */
	struct fragment *hunk = p->fragments;
	static const char heading[] = "-Subproject commit ";
	char *preimage;

	if (/* does the patch have only one hunk? */
	    hunk && !hunk->next &&
	    /* is its preimage one line? */
	    hunk->oldpos == 1 && hunk->oldlines == 1 &&
	    /* does preimage begin with the heading? */
	    (preimage = FUNC1(hunk->patch, '\n', hunk->size)) != NULL &&
	    FUNC2(++preimage, heading) &&
	    /* does it record full SHA-1? */
	    !FUNC0(preimage + sizeof(heading) - 1, oid) &&
	    preimage[sizeof(heading) + the_hash_algo->hexsz - 1] == '\n' &&
	    /* does the abbreviated name on the index line agree with it? */
	    FUNC2(preimage + sizeof(heading) - 1, p->old_oid_prefix))
		return 0; /* it all looks fine */

	/* we may have full object name on the index line */
	return FUNC0(p->old_oid_prefix, oid);
}