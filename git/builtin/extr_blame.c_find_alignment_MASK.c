#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  buf; } ;
struct TYPE_6__ {int /*<<< orphan*/  buf; } ;
struct commit_info {TYPE_3__ author; TYPE_2__ author_mail; } ;
struct blame_scoreboard {int /*<<< orphan*/  path; struct blame_entry* ent; } ;
struct blame_origin {TYPE_4__* commit; int /*<<< orphan*/  path; } ;
struct blame_entry {int s_lno; int num_lines; int lno; struct blame_origin* suspect; struct blame_entry* next; } ;
struct TYPE_5__ {int flags; } ;
struct TYPE_8__ {TYPE_1__ object; } ;

/* Variables and functions */
 int DEFAULT_ABBREV ; 
 int METAINFO_SHOWN ; 
 int OUTPUT_SHOW_EMAIL ; 
 int OUTPUT_SHOW_NAME ; 
 int abbrev ; 
 unsigned int FUNC0 (struct blame_scoreboard*,struct blame_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct commit_info*) ; 
 void* FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,struct commit_info*,int) ; 
 int longest_author ; 
 int longest_file ; 
 void* max_digits ; 
 void* max_orig_digits ; 
 void* max_score_digits ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int,struct blame_origin*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct blame_scoreboard *sb, int *option)
{
	int longest_src_lines = 0;
	int longest_dst_lines = 0;
	unsigned largest_score = 0;
	struct blame_entry *e;
	int compute_auto_abbrev = (abbrev < 0);
	int auto_abbrev = DEFAULT_ABBREV;

	for (e = sb->ent; e; e = e->next) {
		struct blame_origin *suspect = e->suspect;
		int num;

		if (compute_auto_abbrev)
			auto_abbrev = FUNC6(auto_abbrev, suspect);
		if (FUNC4(suspect->path, sb->path))
			*option |= OUTPUT_SHOW_NAME;
		num = FUNC5(suspect->path);
		if (longest_file < num)
			longest_file = num;
		if (!(suspect->commit->object.flags & METAINFO_SHOWN)) {
			struct commit_info ci;
			suspect->commit->object.flags |= METAINFO_SHOWN;
			FUNC3(suspect->commit, &ci, 1);
			if (*option & OUTPUT_SHOW_EMAIL)
				num = FUNC7(ci.author_mail.buf);
			else
				num = FUNC7(ci.author.buf);
			if (longest_author < num)
				longest_author = num;
			FUNC1(&ci);
		}
		num = e->s_lno + e->num_lines;
		if (longest_src_lines < num)
			longest_src_lines = num;
		num = e->lno + e->num_lines;
		if (longest_dst_lines < num)
			longest_dst_lines = num;
		if (largest_score < FUNC0(sb, e))
			largest_score = FUNC0(sb, e);
	}
	max_orig_digits = FUNC2(longest_src_lines);
	max_digits = FUNC2(longest_dst_lines);
	max_score_digits = FUNC2(largest_score);

	if (compute_auto_abbrev)
		/* one more abbrev length is needed for the boundary commit */
		abbrev = auto_abbrev + 1;
}