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
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct ref {int status; char* remote_status; int /*<<< orphan*/  name; struct ref* next; } ;

/* Variables and functions */
#define  REF_STATUS_EXPECTING_REPORT 138 
#define  REF_STATUS_NONE 137 
#define  REF_STATUS_OK 136 
#define  REF_STATUS_REJECT_ALREADY_EXISTS 135 
#define  REF_STATUS_REJECT_FETCH_FIRST 134 
#define  REF_STATUS_REJECT_NEEDS_FORCE 133 
#define  REF_STATUS_REJECT_NODELETE 132 
#define  REF_STATUS_REJECT_NONFASTFORWARD 131 
#define  REF_STATUS_REJECT_STALE 130 
#define  REF_STATUS_REMOTE_REJECT 129 
#define  REF_STATUS_UPTODATE 128 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct ref *ref)
{
	struct strbuf buf = STRBUF_INIT;

	for (; ref; ref = ref->next) {
		const char *msg = NULL;
		const char *res;

		switch(ref->status) {
		case REF_STATUS_NONE:
			res = "error";
			msg = "no match";
			break;

		case REF_STATUS_OK:
			res = "ok";
			break;

		case REF_STATUS_UPTODATE:
			res = "ok";
			msg = "up to date";
			break;

		case REF_STATUS_REJECT_NONFASTFORWARD:
			res = "error";
			msg = "non-fast forward";
			break;

		case REF_STATUS_REJECT_FETCH_FIRST:
			res = "error";
			msg = "fetch first";
			break;

		case REF_STATUS_REJECT_NEEDS_FORCE:
			res = "error";
			msg = "needs force";
			break;

		case REF_STATUS_REJECT_STALE:
			res = "error";
			msg = "stale info";
			break;

		case REF_STATUS_REJECT_ALREADY_EXISTS:
			res = "error";
			msg = "already exists";
			break;

		case REF_STATUS_REJECT_NODELETE:
		case REF_STATUS_REMOTE_REJECT:
			res = "error";
			break;

		case REF_STATUS_EXPECTING_REPORT:
		default:
			continue;
		}

		FUNC4(&buf);
		FUNC2(&buf, "%s %s", res, ref->name);
		if (ref->remote_status)
			msg = ref->remote_status;
		if (msg) {
			FUNC1(&buf, ' ');
			FUNC0(&buf, "", msg, 0);
		}
		FUNC1(&buf, '\n');

		FUNC5(1, buf.buf, buf.len);
	}
	FUNC3(&buf);
}