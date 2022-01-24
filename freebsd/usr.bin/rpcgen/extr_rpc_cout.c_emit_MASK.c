#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  old_type; } ;
struct TYPE_12__ {TYPE_1__ ty; } ;
struct TYPE_13__ {int def_kind; int /*<<< orphan*/  def_name; TYPE_2__ def; } ;
typedef  TYPE_3__ definition ;

/* Variables and functions */
 int DEF_CONST ; 
#define  DEF_ENUM 131 
 int DEF_PROGRAM ; 
#define  DEF_STRUCT 130 
#define  DEF_TYPEDEF 129 
#define  DEF_UNION 128 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC8(definition *def)
{
	if (def->def_kind == DEF_CONST) {
		return;
	}
	if (def->def_kind == DEF_PROGRAM) {
		FUNC1(def);
		return;
	}
	if (def->def_kind == DEF_TYPEDEF) {
		/*
		 * now we need to handle declarations like
		 * struct typedef foo foo;
		 * since we dont want this to be expanded into 2 calls to xdr_foo
		 */

		if (FUNC7(def->def.ty.old_type, def->def_name) == 0)
			return;
	}
	FUNC5(def);
	switch (def->def_kind) {
	case DEF_UNION:
		FUNC4(def);
		break;
	case DEF_ENUM:
		FUNC0(def);
		break;
	case DEF_STRUCT:
		FUNC2(def);
		break;
	case DEF_TYPEDEF:
		FUNC3(def);
		break;
		/* DEF_CONST and DEF_PROGRAM have already been handled */
	default:
		break;
	}
	FUNC6();
}