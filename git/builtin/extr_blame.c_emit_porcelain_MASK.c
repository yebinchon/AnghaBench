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
struct blame_scoreboard {char const* final_buf; int final_buf_size; } ;
struct blame_origin {TYPE_2__* commit; } ;
struct blame_entry {int s_lno; int lno; int num_lines; struct blame_origin* suspect; } ;
struct TYPE_3__ {int /*<<< orphan*/  oid; } ;
struct TYPE_4__ {TYPE_1__ object; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_MAX_HEXSZ ; 
 int OUTPUT_LINE_PORCELAIN ; 
 char* FUNC0 (struct blame_scoreboard*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct blame_origin*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 

__attribute__((used)) static void FUNC5(struct blame_scoreboard *sb, struct blame_entry *ent,
			   int opt)
{
	int repeat = opt & OUTPUT_LINE_PORCELAIN;
	int cnt;
	const char *cp;
	struct blame_origin *suspect = ent->suspect;
	char hex[GIT_MAX_HEXSZ + 1];

	FUNC2(hex, &suspect->commit->object.oid);
	FUNC3("%s %d %d %d\n",
	       hex,
	       ent->s_lno + 1,
	       ent->lno + 1,
	       ent->num_lines);
	FUNC1(suspect, repeat);

	cp = FUNC0(sb, ent->lno);
	for (cnt = 0; cnt < ent->num_lines; cnt++) {
		char ch;
		if (cnt) {
			FUNC3("%s %d %d\n", hex,
			       ent->s_lno + 1 + cnt,
			       ent->lno + 1 + cnt);
			if (repeat)
				FUNC1(suspect, 1);
		}
		FUNC4('\t');
		do {
			ch = *cp++;
			FUNC4(ch);
		} while (ch != '\n' &&
			 cp < sb->final_buf + sb->final_buf_size);
	}

	if (sb->final_buf_size && cp[-1] != '\n')
		FUNC4('\n');
}