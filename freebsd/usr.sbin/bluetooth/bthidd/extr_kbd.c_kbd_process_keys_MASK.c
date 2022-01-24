#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int int32_t ;
typedef  TYPE_1__* bthid_session_p ;
typedef  int /*<<< orphan*/  bitstr_t ;
struct TYPE_3__ {int /*<<< orphan*/ * keys1; int /*<<< orphan*/  ukbd; int /*<<< orphan*/  vkbd; int /*<<< orphan*/ * keys2; int /*<<< orphan*/ * srv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int xsize ; 

int32_t
FUNC10(bthid_session_p s)
{
	bitstr_t	diff[FUNC5(xsize)];
	int32_t		f1, f2, i;

	FUNC0(s != NULL);
	FUNC0(s->srv != NULL);

	/* Check if the new keys have been pressed */
	FUNC2(s->keys1, xsize, &f1);

	/* Check if old keys still pressed */
	FUNC2(s->keys2, xsize, &f2);

	if (f1 == -1) {
		/* no new key pressed */
		if (f2 != -1) {
			/* release old keys */
			FUNC6(s->keys2, f2, 0, s->vkbd);
			FUNC9(s->keys2, f2, 0, s->ukbd);
			FUNC8(s->keys2, 0, FUNC5(xsize));
		}

		return (0);
	}

	if (f2 == -1) {
		/* no old keys, but new keys pressed */
		FUNC0(f1 != -1);
		
		FUNC7(s->keys2, s->keys1, FUNC5(xsize));
		FUNC6(s->keys1, f1, 1, s->vkbd);
		FUNC9(s->keys1, f1, 1, s->ukbd);
		FUNC8(s->keys1, 0, FUNC5(xsize));

		return (0);
	}

	/* new keys got pressed, old keys got released */
	FUNC8(diff, 0, FUNC5(xsize));

	for (i = f2; i < xsize; i ++) {
		if (FUNC4(s->keys2, i)) {
			if (!FUNC4(s->keys1, i)) {
				FUNC1(s->keys2, i);
				FUNC3(diff, i);
			}
		}
	}

	for (i = f1; i < xsize; i++) {
		if (FUNC4(s->keys1, i)) {
			if (!FUNC4(s->keys2, i))
				FUNC3(s->keys2, i);
			else
				FUNC1(s->keys1, i);
		}
	}

	FUNC2(diff, xsize, &f2);
	if (f2 > 0) {
		FUNC6(diff, f2, 0, s->vkbd);
		FUNC9(diff, f2, 0, s->ukbd);
	}

	FUNC2(s->keys1, xsize, &f1);
	if (f1 > 0) {
		FUNC6(s->keys1, f1, 1, s->vkbd);
		FUNC9(s->keys1, f1, 1, s->ukbd);
		FUNC8(s->keys1, 0, FUNC5(xsize));
	}

	return (0);
}