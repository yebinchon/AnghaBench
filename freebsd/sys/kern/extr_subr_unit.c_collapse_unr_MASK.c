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
struct unrhdr {int /*<<< orphan*/  head; scalar_t__ len; int /*<<< orphan*/  last; struct unrhdr* ptr; int /*<<< orphan*/  first; } ;
struct unrb {int /*<<< orphan*/  head; scalar_t__ len; int /*<<< orphan*/  last; struct unrb* ptr; int /*<<< orphan*/  first; } ;
struct unr {int /*<<< orphan*/  head; scalar_t__ len; int /*<<< orphan*/  last; struct unr* ptr; int /*<<< orphan*/  first; } ;

/* Variables and functions */
 struct unrhdr* FUNC0 (int /*<<< orphan*/ *) ; 
 struct unrhdr* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct unrhdr* FUNC2 (struct unrhdr*,int /*<<< orphan*/ ) ; 
 struct unrhdr* FUNC3 (struct unrhdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct unrhdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct unrhdr*,struct unrhdr*) ; 
 scalar_t__ FUNC6 (struct unrhdr*,struct unrhdr*) ; 
 int /*<<< orphan*/  list ; 
 scalar_t__ FUNC7 (struct unrhdr*) ; 
 scalar_t__ FUNC8 (struct unrhdr*,scalar_t__) ; 
 scalar_t__ FUNC9 (struct unrhdr*,scalar_t__) ; 
 int /*<<< orphan*/  unrhd ; 

__attribute__((used)) static void
FUNC10(struct unrhdr *uh, struct unr *up)
{
	struct unr *upp;
	struct unrb *ub;

	/* If bitmap is all set or clear, change it to runlength */
	if (FUNC6(uh, up)) {
		ub = up->ptr;
		if (FUNC9(ub, up->len)) {
			FUNC5(uh, up->ptr);
			up->ptr = uh;
		} else if (FUNC8(ub, up->len)) {
			FUNC5(uh, up->ptr);
			up->ptr = NULL;
		}
	}

	/* If nothing left in runlength, delete it */
	if (up->len == 0) {
		upp = FUNC3(up, unrhd, list);
		if (upp == NULL)
			upp = FUNC2(up, list);
		FUNC4(&uh->head, up, list);
		FUNC5(uh, up);
		up = upp;
	}

	/* If we have "hot-spot" still, merge with neighbor if possible */
	if (up != NULL) {
		upp = FUNC3(up, unrhd, list);
		if (upp != NULL && up->ptr == upp->ptr) {
			up->len += upp->len;
			FUNC4(&uh->head, upp, list);
			FUNC5(uh, upp);
			}
		upp = FUNC2(up, list);
		if (upp != NULL && up->ptr == upp->ptr) {
			up->len += upp->len;
			FUNC4(&uh->head, upp, list);
			FUNC5(uh, upp);
		}
	}

	/* Merge into ->first if possible */
	upp = FUNC0(&uh->head);
	if (upp != NULL && upp->ptr == uh) {
		uh->first += upp->len;
		FUNC4(&uh->head, upp, list);
		FUNC5(uh, upp);
		if (up == upp)
			up = NULL;
	}

	/* Merge into ->last if possible */
	upp = FUNC1(&uh->head, unrhd);
	if (upp != NULL && upp->ptr == NULL) {
		uh->last += upp->len;
		FUNC4(&uh->head, upp, list);
		FUNC5(uh, upp);
		if (up == upp)
			up = NULL;
	}

	/* Try to make bitmaps */
	while (FUNC7(uh))
		continue;
}