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
struct TYPE_4__ {int /*<<< orphan*/  string; int /*<<< orphan*/  num; } ;
struct value {int type; int /*<<< orphan*/ * array; TYPE_2__ u; } ;
struct stack {size_t sp; TYPE_1__* stack; } ;
struct TYPE_3__ {int type; int /*<<< orphan*/ * array; } ;

/* Variables and functions */
#define  BCODE_NONE 130 
#define  BCODE_NUMBER 129 
#define  BCODE_STRING 128 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct stack*) ; 
 int /*<<< orphan*/  FUNC2 (struct stack*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct stack*,int /*<<< orphan*/ ) ; 

void
FUNC4(struct stack *stack, struct value *v)
{

	switch (v->type) {
	case BCODE_NONE:
		FUNC1(stack);
		stack->stack[stack->sp].type = BCODE_NONE;
		break;
	case BCODE_NUMBER:
		FUNC2(stack, v->u.num);
		break;
	case BCODE_STRING:
		FUNC3(stack, v->u.string);
		break;
	}
	stack->stack[stack->sp].array = v->array == NULL ?
	    NULL : FUNC0(v->array);
}