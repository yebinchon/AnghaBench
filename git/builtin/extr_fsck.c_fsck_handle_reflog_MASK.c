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
struct object_id {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fsck_handle_reflog_ent ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC2 (void*,struct strbuf*,char const*) ; 

__attribute__((used)) static int FUNC3(const char *logname, const struct object_id *oid,
			      int flag, void *cb_data)
{
	struct strbuf refname = STRBUF_INIT;

	FUNC2(cb_data, &refname, logname);
	FUNC0(refname.buf, fsck_handle_reflog_ent, refname.buf);
	FUNC1(&refname);
	return 0;
}