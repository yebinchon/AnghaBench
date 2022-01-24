#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct strbuf {int dummy; } ;
struct TYPE_6__ {scalar_t__ nr; } ;
struct src_data {int head_status; TYPE_3__ generic; TYPE_3__ tag; TYPE_3__ r_branch; TYPE_3__ branch; } ;
struct TYPE_5__ {int nr; TYPE_1__* items; } ;
struct TYPE_4__ {char const* string; struct src_data* util; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,TYPE_3__*,struct strbuf*) ; 
 TYPE_2__ srcs ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char const*) ; 
 scalar_t__ FUNC4 (char*,char const*) ; 

__attribute__((used)) static void FUNC5(struct strbuf *out,
				const char *current_branch)
{
	int i = 0;
	char *sep = "";

	FUNC3(out, "Merge ");
	for (i = 0; i < srcs.nr; i++) {
		struct src_data *src_data = srcs.items[i].util;
		const char *subsep = "";

		FUNC3(out, sep);
		sep = "; ";

		if (src_data->head_status == 1) {
			FUNC3(out, srcs.items[i].string);
			continue;
		}
		if (src_data->head_status == 3) {
			subsep = ", ";
			FUNC3(out, "HEAD");
		}
		if (src_data->branch.nr) {
			FUNC3(out, subsep);
			subsep = ", ";
			FUNC0("branch ", "branches ", &src_data->branch,
					out);
		}
		if (src_data->r_branch.nr) {
			FUNC3(out, subsep);
			subsep = ", ";
			FUNC0("remote-tracking branch ", "remote-tracking branches ",
					&src_data->r_branch, out);
		}
		if (src_data->tag.nr) {
			FUNC3(out, subsep);
			subsep = ", ";
			FUNC0("tag ", "tags ", &src_data->tag, out);
		}
		if (src_data->generic.nr) {
			FUNC3(out, subsep);
			FUNC0("commit ", "commits ", &src_data->generic,
					out);
		}
		if (FUNC4(".", srcs.items[i].string))
			FUNC2(out, " of %s", srcs.items[i].string);
	}

	if (!FUNC4("master", current_branch))
		FUNC1(out, '\n');
	else
		FUNC2(out, " into %s\n", current_branch);
}