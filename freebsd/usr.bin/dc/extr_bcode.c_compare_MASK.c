#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  string; } ;
struct value {int type; TYPE_1__ u; } ;
struct number {int dummy; } ;
typedef  enum bcode_compare { ____Placeholder_bcode_compare } bcode_compare ;
struct TYPE_4__ {int /*<<< orphan*/ * reg; } ;

/* Variables and functions */
#define  BCODE_NONE 130 
#define  BCODE_NUMBER 129 
#define  BCODE_STRING 128 
 int NO_ELSE ; 
 TYPE_2__ bmachine ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,struct number*,struct number*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct number* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct number*) ; 
 char FUNC5 () ; 
 int FUNC6 () ; 
 struct value* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,int) ; 

__attribute__((used)) static void
FUNC11(enum bcode_compare type)
{
	struct number *a, *b;
	struct value *v;
	int idx, elseidx;
	bool ok;

	elseidx = NO_ELSE;
	idx = FUNC6();
	if (FUNC5() == 'e')
		elseidx = FUNC6();
	else
		FUNC8();

	a = FUNC3();
	if (a == NULL)
		return;
	b = FUNC3();
	if (b == NULL) {
		FUNC4(a);
		return;
	}

	ok = FUNC1(type, a, b);

	if (!ok && elseidx != NO_ELSE)
		idx = elseidx;

	if (idx >= 0 && (ok || (!ok && elseidx != NO_ELSE))) {
		v = FUNC7(&bmachine.reg[idx]);
		if (v == NULL)
			FUNC10("register '%c' (0%o) is empty", idx, idx);
		else {
			switch(v->type) {
			case BCODE_NONE:
				FUNC10("register '%c' (0%o) is empty", idx, idx);
				break;
			case BCODE_NUMBER:
				FUNC9("eval called with non-string argument");
				break;
			case BCODE_STRING:
				FUNC2(FUNC0(v->u.string));
				break;
			}
		}
	}
}