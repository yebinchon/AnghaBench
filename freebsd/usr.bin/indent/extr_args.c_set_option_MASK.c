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
struct pro {char* p_name; int p_type; int p_special; int* p_obj; } ;
struct TYPE_2__ {int /*<<< orphan*/  case_indent; } ;

/* Variables and functions */
#define  CLI 136 
#define  IGN 135 
 char* INDENT_VERSION ; 
#define  KEY 134 
#define  KEY_FILE 133 
 int OFF ; 
#define  PRO_BOOL 132 
#define  PRO_INT 131 
#define  PRO_SPECIAL 130 
#define  STDIN 129 
#define  VERSION 128 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int FUNC3 (char const*) ; 
 char* FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * input ; 
 int /*<<< orphan*/  FUNC7 (unsigned char) ; 
 TYPE_1__ opt ; 
 int /*<<< orphan*/  option_source ; 
 int /*<<< orphan*/ * output ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 struct pro* pro ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/ * stdout ; 

void
FUNC9(char *arg)
{
    struct	pro *p;
    const char	*param_start;

    arg++;			/* ignore leading "-" */
    for (p = pro; p->p_name; p++)
	if (*p->p_name == *arg && (param_start = FUNC4(p->p_name, arg)) != NULL)
	    goto found;
    FUNC5(1, "%s: unknown parameter \"%s\"", option_source, arg - 1);
found:
    switch (p->p_type) {

    case PRO_SPECIAL:
	switch (p->p_special) {

	case IGN:
	    break;

	case CLI:
	    if (*param_start == 0)
		goto need_param;
	    opt.case_indent = FUNC2(param_start);
	    break;

	case STDIN:
	    if (input == NULL)
		input = stdin;
	    if (output == NULL)
		output = stdout;
	    break;

	case KEY:
	    if (*param_start == 0)
		goto need_param;
	    FUNC1(param_start);
	    break;

	case KEY_FILE:
	    if (*param_start == 0)
		goto need_param;
	    FUNC0(param_start);
	    break;

	case VERSION:
	    FUNC8("FreeBSD indent %s\n", INDENT_VERSION);
	    FUNC6(0);

	default:
	    FUNC5(1, "set_option: internal error: p_special %d", p->p_special);
	}
	break;

    case PRO_BOOL:
	if (p->p_special == OFF)
	    *p->p_obj = false;
	else
	    *p->p_obj = true;
	break;

    case PRO_INT:
	if (!FUNC7((unsigned char)*param_start)) {
    need_param:
	    FUNC5(1, "%s: ``%s'' requires a parameter", option_source, p->p_name);
	}
	*p->p_obj = FUNC3(param_start);
	break;

    default:
	FUNC5(1, "set_option: internal error: p_type %d", p->p_type);
    }
}