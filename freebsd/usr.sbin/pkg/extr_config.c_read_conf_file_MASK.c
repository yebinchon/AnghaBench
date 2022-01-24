#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ type; } ;
typedef  TYPE_1__ ucl_object_t ;
struct ucl_parser {int dummy; } ;
typedef  int /*<<< orphan*/  pkg_conf_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONFFILE_PKG ; 
 int /*<<< orphan*/  CONFFILE_REPO ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 scalar_t__ UCL_OBJECT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct ucl_parser*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct ucl_parser*) ; 
 int /*<<< orphan*/  FUNC6 (struct ucl_parser*) ; 
 TYPE_1__* FUNC7 (struct ucl_parser*) ; 
 struct ucl_parser* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 

__attribute__((used)) static int
FUNC10(const char *confpath, pkg_conf_file_t conftype)
{
	struct ucl_parser *p;
	ucl_object_t *obj = NULL;

	p = FUNC8(0);

	if (!FUNC4(p, confpath)) {
		if (errno != ENOENT)
			FUNC1(EXIT_FAILURE, "Unable to parse configuration "
			    "file %s: %s", confpath, FUNC6(p));
		FUNC5(p);
		/* no configuration present */
		return (1);
	}

	obj = FUNC7(p);
	if (obj->type != UCL_OBJECT) 
		FUNC9("Invalid configuration format, ignoring the "
		    "configuration file %s", confpath);
	else {
		if (conftype == CONFFILE_PKG)
			FUNC0(obj, conftype);
		else if (conftype == CONFFILE_REPO)
			FUNC2(obj);
	}

	FUNC3(obj);
	FUNC5(p);

	return (0);
}