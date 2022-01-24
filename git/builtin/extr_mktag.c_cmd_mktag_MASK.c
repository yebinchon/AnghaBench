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
struct object_id {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (struct object_id*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (struct strbuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 
 int /*<<< orphan*/  tag_type ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct object_id*) ; 

int FUNC9(int argc, const char **argv, const char *prefix)
{
	struct strbuf buf = STRBUF_INIT;
	struct object_id result;

	if (argc != 1)
		FUNC6("git mktag");

	if (FUNC4(&buf, 0, 4096) < 0) {
		FUNC1("could not read from stdin");
	}

	/* Verify it for some basic sanity: it needs to start with
	   "object <sha1>\ntype\ntagger " */
	if (FUNC7(buf.buf, buf.len) < 0)
		FUNC0("invalid tag signature file");

	if (FUNC8(buf.buf, buf.len, tag_type, &result) < 0)
		FUNC0("unable to write tag file");

	FUNC5(&buf);
	FUNC3("%s\n", FUNC2(&result));
	return 0;
}