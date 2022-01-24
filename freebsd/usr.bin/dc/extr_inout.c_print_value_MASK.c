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
typedef  int /*<<< orphan*/  u_int ;
struct TYPE_2__ {char* string; int /*<<< orphan*/  num; } ;
struct value {int type; TYPE_1__ u; int /*<<< orphan*/ * array; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  BCODE_NONE 130 
#define  BCODE_NUMBER 129 
#define  BCODE_STRING 128 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(FILE *f, const struct value *value, const char *prefix, u_int base)
{

	FUNC0(prefix, f);
	switch (value->type) {
	case BCODE_NONE:
		if (value->array != NULL)
			FUNC0("<array>", f);
		break;
	case BCODE_NUMBER:
		FUNC1(f, value->u.num, base);
		break;
	case BCODE_STRING:
		FUNC0(value->u.string, f);
		break;
	}
}