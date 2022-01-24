#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct strbuf {char* buf; int len; } ;
struct expand_data {int /*<<< orphan*/  oid; int /*<<< orphan*/  info; int /*<<< orphan*/  skip_object_info; } ;
struct batch_options {scalar_t__ print_contents; int /*<<< orphan*/  format; } ;

/* Variables and functions */
 int /*<<< orphan*/  OBJECT_INFO_LOOKUP_REPLACE ; 
 int /*<<< orphan*/  FUNC0 (struct batch_options*,char*,int) ; 
 int /*<<< orphan*/  expand_format ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct batch_options*,struct expand_data*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct expand_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static void FUNC9(const char *obj_name,
			       struct strbuf *scratch,
			       struct batch_options *opt,
			       struct expand_data *data)
{
	if (!data->skip_object_info &&
	    FUNC2(the_repository, &data->oid, &data->info,
				     OBJECT_INFO_LOOKUP_REPLACE) < 0) {
		FUNC5("%s missing\n",
		       obj_name ? obj_name : FUNC3(&data->oid));
		FUNC1(stdout);
		return;
	}

	FUNC8(scratch);
	FUNC7(scratch, opt->format, expand_format, data);
	FUNC6(scratch, '\n');
	FUNC0(opt, scratch->buf, scratch->len);

	if (opt->print_contents) {
		FUNC4(opt, data);
		FUNC0(opt, "\n", 1);
	}
}