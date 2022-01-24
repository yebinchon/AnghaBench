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
struct strbuf {char const* buf; scalar_t__ len; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int FUNC0 (char**,int) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char) ; 
 scalar_t__ FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,char*,char const*,...) ; 
 char* FUNC8 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*,scalar_t__) ; 
 size_t FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 char* FUNC13 (char const*) ; 

__attribute__((used)) static char *FUNC14(const char *remote_url,
				const char *url,
				const char *up_path)
{
	int is_relative = 0;
	int colonsep = 0;
	char *out;
	char *remoteurl = FUNC13(remote_url);
	struct strbuf sb = STRBUF_INIT;
	size_t len = FUNC11(remoteurl);

	if (FUNC4(remoteurl[len-1]))
		remoteurl[len-1] = '\0';

	if (!FUNC12(remoteurl) || FUNC3(remoteurl))
		is_relative = 0;
	else {
		is_relative = 1;
		/*
		 * Prepend a './' to ensure all relative
		 * remoteurls start with './' or '../'
		 */
		if (!FUNC6(remoteurl) &&
		    !FUNC5(remoteurl)) {
			FUNC9(&sb);
			FUNC7(&sb, "./%s", remoteurl);
			FUNC2(remoteurl);
			remoteurl = FUNC8(&sb, NULL);
		}
	}
	/*
	 * When the url starts with '../', remove that and the
	 * last directory in remoteurl.
	 */
	while (url) {
		if (FUNC5(url)) {
			url += 3;
			colonsep |= FUNC0(&remoteurl, is_relative);
		} else if (FUNC6(url))
			url += 2;
		else
			break;
	}
	FUNC9(&sb);
	FUNC7(&sb, "%s%s%s", remoteurl, colonsep ? ":" : "/", url);
	if (FUNC1(url, "/"))
		FUNC10(&sb, sb.len - 1);
	FUNC2(remoteurl);

	if (FUNC6(sb.buf))
		out = FUNC13(sb.buf + 2);
	else
		out = FUNC13(sb.buf);
	FUNC9(&sb);

	if (!up_path || !is_relative)
		return out;

	FUNC7(&sb, "%s%s", up_path, out);
	FUNC2(out);
	return FUNC8(&sb, NULL);
}