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

/* Variables and functions */
 int O_CREAT ; 
 int O_EXCL ; 
 int O_RDWR ; 
 int /*<<< orphan*/  R_OK ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,char*,char const*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int precomposed_unicode ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(void)
{
	struct strbuf path = STRBUF_INIT;
	static const char *auml_nfc = "\xc3\xa4";
	static const char *auml_nfd = "\x61\xcc\x88";
	int output_fd;
	if (precomposed_unicode != -1)
		return; /* We found it defined in the global config, respect it */
	FUNC5(&path, "%s", auml_nfc);
	output_fd = FUNC6(path.buf, O_CREAT|O_EXCL|O_RDWR, 0600);
	if (output_fd >= 0) {
		FUNC2(output_fd);
		FUNC5(&path, "%s", auml_nfd);
		precomposed_unicode = FUNC1(path.buf, R_OK) ? 0 : 1;
		FUNC4("core.precomposeunicode",
			       precomposed_unicode ? "true" : "false");
		FUNC5(&path, "%s", auml_nfc);
		if (FUNC8(path.buf))
			FUNC3(FUNC0("failed to unlink '%s'"), path.buf);
	}
	FUNC7(&path);
}