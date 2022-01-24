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
struct strbuf {int /*<<< orphan*/  buf; } ;
struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct commit_list {int dummy; } ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  O_RDONLY ; 
 struct strbuf STRBUF_INIT ; 
 struct commit_list** FUNC0 (struct repository*,struct commit_list**,struct object_id*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct object_id*) ; 
 int /*<<< orphan*/  FUNC4 (struct repository*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,int,char) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*) ; 

__attribute__((used)) static void FUNC8(struct repository *r,
				 struct commit_list **tail)
{
	int merge_head;
	struct strbuf line = STRBUF_INIT;

	merge_head = FUNC5(FUNC4(r), O_RDONLY);
	if (merge_head < 0) {
		if (errno == ENOENT)
			return;
		FUNC2("cannot open '%s' for reading",
		    FUNC4(r));
	}

	while (!FUNC6(&line, merge_head, '\n')) {
		struct object_id oid;
		if (FUNC3(line.buf, &oid))
			FUNC2("unknown line in '%s': %s",
			    FUNC4(r), line.buf);
		tail = FUNC0(r, tail, &oid);
	}
	FUNC1(merge_head);
	FUNC7(&line);
}