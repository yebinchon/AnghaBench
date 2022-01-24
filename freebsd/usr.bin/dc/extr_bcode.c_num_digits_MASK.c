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
struct TYPE_2__ {int /*<<< orphan*/  string; int /*<<< orphan*/  num; } ;
struct value {int type; TYPE_1__ u; } ;
struct number {int /*<<< orphan*/  number; } ;

/* Variables and functions */
#define  BCODE_NONE 130 
#define  BCODE_NUMBER 129 
#define  BCODE_STRING 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 struct number* FUNC3 () ; 
 struct value* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct number*) ; 
 int /*<<< orphan*/  FUNC6 (struct value*) ; 
 size_t FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(void)
{
	struct number *n = NULL;
	struct value *value;
	size_t digits;

	value = FUNC4();
	if (value != NULL) {
		switch (value->type) {
		case BCODE_NONE:
			return;
		case BCODE_NUMBER:
			digits = FUNC2(value->u.num);
			n = FUNC3();
			FUNC1(FUNC0(n->number, digits));
			break;
		case BCODE_STRING:
			digits = FUNC7(value->u.string);
			n = FUNC3();
			FUNC1(FUNC0(n->number, digits));
			break;
		}
		FUNC6(value);
		FUNC5(n);
	}
}