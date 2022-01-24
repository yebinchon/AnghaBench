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
struct string_list {int nr; TYPE_1__* items; } ;
struct ref {int dummy; } ;
struct packet_reader {scalar_t__ status; int /*<<< orphan*/  line; } ;
struct argv_array {int argc; int /*<<< orphan*/ * argv; } ;
struct TYPE_2__ {int /*<<< orphan*/  string; } ;

/* Variables and functions */
 scalar_t__ PACKET_READ_FLUSH ; 
 scalar_t__ PACKET_READ_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (struct packet_reader*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct ref***) ; 
 scalar_t__ FUNC8 (char*,int) ; 

struct ref **FUNC9(int fd_out, struct packet_reader *reader,
			     struct ref **list, int for_push,
			     const struct argv_array *ref_prefixes,
			     const struct string_list *server_options)
{
	int i;
	*list = NULL;

	if (FUNC8("ls-refs", 1))
		FUNC6(fd_out, "command=ls-refs\n");

	if (FUNC8("agent", 0))
		FUNC6(fd_out, "agent=%s", FUNC2());

	if (server_options && server_options->nr &&
	    FUNC8("server-option", 1))
		for (i = 0; i < server_options->nr; i++)
			FUNC6(fd_out, "server-option=%s",
					 server_options->items[i].string);

	FUNC3(fd_out);
	/* When pushing we don't want to request the peeled tags */
	if (!for_push)
		FUNC6(fd_out, "peel\n");
	FUNC6(fd_out, "symrefs\n");
	for (i = 0; ref_prefixes && i < ref_prefixes->argc; i++) {
		FUNC6(fd_out, "ref-prefix %s\n",
				 ref_prefixes->argv[i]);
	}
	FUNC4(fd_out);

	/* Process response from server */
	while (FUNC5(reader) == PACKET_READ_NORMAL) {
		if (!FUNC7(reader->line, &list))
			FUNC1(FUNC0("invalid ls-refs response: %s"), reader->line);
	}

	if (reader->status != PACKET_READ_FLUSH)
		FUNC1(FUNC0("expected flush after ref listing"));

	return list;
}