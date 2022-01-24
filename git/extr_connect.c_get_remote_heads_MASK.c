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
struct ref {int dummy; } ;
struct packet_reader {int pktlen; int /*<<< orphan*/  line; } ;
struct oid_array {int dummy; } ;
typedef  enum get_remote_heads_state { ____Placeholder_get_remote_heads_state } get_remote_heads_state ;

/* Variables and functions */
#define  EXPECTING_DONE 135 
#define  EXPECTING_FIRST_REF 134 
#define  EXPECTING_REF 133 
#define  EXPECTING_SHALLOW 132 
#define  PACKET_READ_DELIM 131 
#define  PACKET_READ_EOF 130 
#define  PACKET_READ_FLUSH 129 
#define  PACKET_READ_NORMAL 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ref*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct packet_reader*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,struct ref***,unsigned int,struct oid_array*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,struct oid_array*) ; 

struct ref **FUNC9(struct packet_reader *reader,
			      struct ref **list, unsigned int flags,
			      struct oid_array *extra_have,
			      struct oid_array *shallow_points)
{
	struct ref **orig_list = list;
	int len = 0;
	enum get_remote_heads_state state = EXPECTING_FIRST_REF;

	*list = NULL;

	while (state != EXPECTING_DONE) {
		switch (FUNC4(reader)) {
		case PACKET_READ_EOF:
			FUNC3(1);
		case PACKET_READ_NORMAL:
			len = reader->pktlen;
			break;
		case PACKET_READ_FLUSH:
			state = EXPECTING_DONE;
			break;
		case PACKET_READ_DELIM:
			FUNC2(FUNC0("invalid packet"));
		}

		switch (state) {
		case EXPECTING_FIRST_REF:
			FUNC5(reader->line, &len);
			if (FUNC6(reader->line)) {
				state = EXPECTING_SHALLOW;
				break;
			}
			state = EXPECTING_REF;
			/* fallthrough */
		case EXPECTING_REF:
			if (FUNC7(reader->line, len, &list, flags, extra_have))
				break;
			state = EXPECTING_SHALLOW;
			/* fallthrough */
		case EXPECTING_SHALLOW:
			if (FUNC8(reader->line, len, shallow_points))
				break;
			FUNC2(FUNC0("protocol error: unexpected '%s'"), reader->line);
		case EXPECTING_DONE:
			break;
		}
	}

	FUNC1(*orig_list);

	return list;
}