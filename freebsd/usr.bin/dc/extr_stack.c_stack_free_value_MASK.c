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
struct value {int type; int /*<<< orphan*/ * array; TYPE_1__ u; } ;

/* Variables and functions */
#define  BCODE_NONE 130 
#define  BCODE_NUMBER 129 
#define  BCODE_STRING 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(struct value *v)
{

	switch (v->type) {
	case BCODE_NONE:
		break;
	case BCODE_NUMBER:
		FUNC2(v->u.num);
		break;
	case BCODE_STRING:
		FUNC1(v->u.string);
		break;
	}
	FUNC0(v->array);
	v->array = NULL;
}