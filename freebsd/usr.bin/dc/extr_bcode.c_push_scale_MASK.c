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
typedef  int /*<<< orphan*/  u_int ;
struct TYPE_4__ {TYPE_1__* num; } ;
struct value {int type; TYPE_2__ u; } ;
struct number {int /*<<< orphan*/  number; } ;
struct TYPE_3__ {int /*<<< orphan*/  scale; } ;

/* Variables and functions */
#define  BCODE_NONE 130 
#define  BCODE_NUMBER 129 
#define  BCODE_STRING 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct number* FUNC2 () ; 
 struct value* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct number*) ; 
 int /*<<< orphan*/  FUNC5 (struct value*) ; 

__attribute__((used)) static void
FUNC6(void)
{
	struct number *n;
	struct value *value;
	u_int scale = 0;

	value = FUNC3();
	if (value != NULL) {
		switch (value->type) {
		case BCODE_NONE:
			return;
		case BCODE_NUMBER:
			scale = value->u.num->scale;
			break;
		case BCODE_STRING:
			break;
		}
		FUNC5(value);
		n = FUNC2();
		FUNC1(FUNC0(n->number, scale));
		FUNC4(n);
	}
}