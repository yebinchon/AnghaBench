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
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char**) ; 
 char* FUNC4 (char*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC8 () ; 

__attribute__((used)) static char *FUNC9(const char *rel_url)
{
	char *remoteurl, *relurl;
	char *remote = FUNC2();
	struct strbuf remotesb = STRBUF_INIT;

	FUNC5(&remotesb, "remote.%s.url", remote);
	if (FUNC3(remotesb.buf, &remoteurl)) {
		FUNC7(FUNC0("could not look up configuration '%s'. Assuming this repository is its own authoritative upstream."), remotesb.buf);
		remoteurl = FUNC8();
	}
	relurl = FUNC4(remoteurl, rel_url, NULL);

	FUNC1(remote);
	FUNC1(remoteurl);
	FUNC6(&remotesb);

	return relurl;
}