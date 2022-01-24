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
struct TYPE_2__ {char* string; struct number* num; } ;
struct value {int type; TYPE_1__ u; } ;
struct number {int /*<<< orphan*/  number; } ;

/* Variables and functions */
#define  BCODE_NONE 130 
#define  BCODE_NUMBER 129 
#define  BCODE_STRING 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct number*,int /*<<< orphan*/ ) ; 
 struct value* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct value*) ; 

__attribute__((used)) static void
FUNC9(void)
{
	struct number *n;
	struct value *value;
	char str[2];

	value = FUNC6();
	if (value != NULL) {
		str[1] = '\0';
		switch (value->type) {
		case BCODE_NONE:
			return;
		case BCODE_NUMBER:
			n = value->u.num;
			FUNC5(n, 0);
			if (FUNC2(n->number) > 8)
				FUNC3(FUNC1(n->number, 8));
			str[0] = (char)FUNC0(n->number);
			break;
		case BCODE_STRING:
			str[0] = value->u.string[0];
			break;
		}
		FUNC8(value);
		FUNC7(FUNC4(str));
	}
}