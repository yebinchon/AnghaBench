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

/* Variables and functions */
 scalar_t__ EEXIST ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int) ; 
 char* FUNC2 (char const*,char const*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,char const*) ; 
 scalar_t__ errno ; 
 int FUNC4 (char const*) ; 
 char* FUNC5 (struct strbuf*,unsigned char const*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 
 int FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (int,char const*,int) ; 

__attribute__((used)) static void FUNC9(const char *suffix, const char *msg,
			       const char *pack_name, const unsigned char *hash,
			       const char **report)
{
	struct strbuf name_buf = STRBUF_INIT;
	const char *filename;
	int fd;
	int msg_len = FUNC7(msg);

	if (pack_name)
		filename = FUNC2(pack_name, suffix, &name_buf);
	else
		filename = FUNC5(&name_buf, hash, suffix);

	fd = FUNC4(filename);
	if (fd < 0) {
		if (errno != EEXIST)
			FUNC3(FUNC0("cannot write %s file '%s'"),
				  suffix, filename);
	} else {
		if (msg_len > 0) {
			FUNC8(fd, msg, msg_len);
			FUNC8(fd, "\n", 1);
		}
		if (FUNC1(fd) != 0)
			FUNC3(FUNC0("cannot close written %s file '%s'"),
				  suffix, filename);
		if (report)
			*report = suffix;
	}
	FUNC6(&name_buf);
}