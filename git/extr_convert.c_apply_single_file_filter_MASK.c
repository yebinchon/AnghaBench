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
struct strbuf {int dummy; } ;
struct filter_params {char const* src; size_t size; int fd; char const* cmd; char const* path; } ;
struct async {int out; struct filter_params* data; int /*<<< orphan*/  proc; } ;
typedef  int /*<<< orphan*/  async ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  filter_buffer_or_fd ; 
 scalar_t__ FUNC4 (struct async*) ; 
 int /*<<< orphan*/  FUNC5 (struct async*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (struct async*) ; 
 scalar_t__ FUNC7 (struct strbuf*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*,struct strbuf*) ; 

__attribute__((used)) static int FUNC10(const char *path, const char *src, size_t len, int fd,
				    struct strbuf *dst, const char *cmd)
{
	/*
	 * Create a pipeline to have the command filter the buffer's
	 * contents.
	 *
	 * (child --> cmd) --> us
	 */
	int err = 0;
	struct strbuf nbuf = STRBUF_INIT;
	struct async async;
	struct filter_params params;

	FUNC5(&async, 0, sizeof(async));
	async.proc = filter_buffer_or_fd;
	async.data = &params;
	async.out = -1;
	params.src = src;
	params.size = len;
	params.fd = fd;
	params.cmd = cmd;
	params.path = path;

	FUNC3(NULL);
	if (FUNC6(&async))
		return 0;	/* error was already reported */

	if (FUNC7(&nbuf, async.out, 0) < 0) {
		err = FUNC2(FUNC0("read from external filter '%s' failed"), cmd);
	}
	if (FUNC1(async.out)) {
		err = FUNC2(FUNC0("read from external filter '%s' failed"), cmd);
	}
	if (FUNC4(&async)) {
		err = FUNC2(FUNC0("external filter '%s' failed"), cmd);
	}

	if (!err) {
		FUNC9(dst, &nbuf);
	}
	FUNC8(&nbuf);
	return !err;
}