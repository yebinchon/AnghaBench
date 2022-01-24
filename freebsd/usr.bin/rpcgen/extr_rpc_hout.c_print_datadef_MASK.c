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
struct TYPE_11__ {int /*<<< orphan*/  rel; int /*<<< orphan*/  old_type; } ;
struct TYPE_12__ {TYPE_1__ ty; } ;
struct TYPE_13__ {int def_kind; TYPE_2__ def; int /*<<< orphan*/  def_name; } ;
typedef  TYPE_3__ definition ;

/* Variables and functions */
#define  DEF_CONST 133 
#define  DEF_ENUM 132 
#define  DEF_PROGRAM 131 
#define  DEF_STRUCT 130 
#define  DEF_TYPEDEF 129 
#define  DEF_UNION 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  fout ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

void
FUNC9(definition *def, int headeronly)
{

	if (def->def_kind == DEF_PROGRAM)  /* handle data only */
		return;

	if (def->def_kind != DEF_CONST) {
		FUNC0(fout, "\n");
	}
	switch (def->def_kind) {
	case DEF_STRUCT:
		FUNC5(def);
		break;
	case DEF_UNION:
		FUNC7(def);
		break;
	case DEF_ENUM:
		FUNC3(def);
		break;
	case DEF_TYPEDEF:
		FUNC6(def);
		break;
	case DEF_PROGRAM:
		FUNC4(def, headeronly);
		break;
	case DEF_CONST:
		FUNC2(def);
		break;
	}
	if (def->def_kind != DEF_PROGRAM && def->def_kind != DEF_CONST) {
	    FUNC8(def->def_name,
			     def->def_kind != DEF_TYPEDEF ||
			     !FUNC1(def->def.ty.old_type,
					  def->def.ty.rel));
	}
}