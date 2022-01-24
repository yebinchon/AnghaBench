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
struct strbuf {int len; char* buf; } ;
struct object_id {int dummy; } ;
struct commit_list {int dummy; } ;
struct commit {int dummy; } ;
struct TYPE_4__ {struct commit_list* next; } ;
struct TYPE_3__ {unsigned int hexsz; } ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int) ; 
 TYPE_2__* FUNC2 (struct commit*,struct commit_list**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 struct commit* FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,struct object_id*) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char*,char*,int) ; 
 int FUNC9 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct strbuf*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*) ; 
 char* FUNC12 (char*,char) ; 
 TYPE_1__* the_hash_algo ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static void FUNC13(struct commit_list **remotes, struct strbuf *merge_names)
{
	const char *filename;
	int fd, pos, npos;
	struct strbuf fetch_head_file = STRBUF_INIT;
	const unsigned hexsz = the_hash_algo->hexsz;

	if (!merge_names)
		merge_names = &fetch_head_file;

	filename = FUNC7(the_repository);
	fd = FUNC9(filename, O_RDONLY);
	if (fd < 0)
		FUNC4(FUNC0("could not open '%s' for reading"), filename);

	if (FUNC10(merge_names, fd, 0) < 0)
		FUNC4(FUNC0("could not read '%s'"), filename);
	if (FUNC1(fd) < 0)
		FUNC4(FUNC0("could not close '%s'"), filename);

	for (pos = 0; pos < merge_names->len; pos = npos) {
		struct object_id oid;
		char *ptr;
		struct commit *commit;

		ptr = FUNC12(merge_names->buf + pos, '\n');
		if (ptr)
			npos = ptr - merge_names->buf + 1;
		else
			npos = merge_names->len;

		if (npos - pos < hexsz + 2 ||
		    FUNC6(merge_names->buf + pos, &oid))
			commit = NULL; /* bad */
		else if (FUNC8(merge_names->buf + pos + hexsz, "\t\t", 2))
			continue; /* not-for-merge */
		else {
			char saved = merge_names->buf[pos + hexsz];
			merge_names->buf[pos + hexsz] = '\0';
			commit = FUNC5(merge_names->buf + pos);
			merge_names->buf[pos + hexsz] = saved;
		}
		if (!commit) {
			if (ptr)
				*ptr = '\0';
			FUNC3(FUNC0("not something we can merge in %s: %s"),
			    filename, merge_names->buf + pos);
		}
		remotes = &FUNC2(commit, remotes)->next;
	}

	if (merge_names == &fetch_head_file)
		FUNC11(&fetch_head_file);
}