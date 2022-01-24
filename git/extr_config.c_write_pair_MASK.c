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
struct config_store_data {int baselen; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char const) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 
 int FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC6(int fd, const char *key, const char *value,
			  const struct config_store_data *store)
{
	int i;
	ssize_t ret;
	int length = FUNC4(key + store->baselen + 1);
	const char *quote = "";
	struct strbuf sb = STRBUF_INIT;

	/*
	 * Check to see if the value needs to be surrounded with a dq pair.
	 * Note that problematic characters are always backslash-quoted; this
	 * check is about not losing leading or trailing SP and strings that
	 * follow beginning-of-comment characters (i.e. ';' and '#') by the
	 * configuration parser.
	 */
	if (value[0] == ' ')
		quote = "\"";
	for (i = 0; value[i]; i++)
		if (value[i] == ';' || value[i] == '#')
			quote = "\"";
	if (i && value[i - 1] == ' ')
		quote = "\"";

	FUNC1(&sb, "\t%.*s = %s",
		    length, key + store->baselen + 1, quote);

	for (i = 0; value[i]; i++)
		switch (value[i]) {
		case '\n':
			FUNC2(&sb, "\\n");
			break;
		case '\t':
			FUNC2(&sb, "\\t");
			break;
		case '"':
		case '\\':
			FUNC0(&sb, '\\');
			/* fallthrough */
		default:
			FUNC0(&sb, value[i]);
			break;
		}
	FUNC1(&sb, "%s\n", quote);

	ret = FUNC5(fd, sb.buf, sb.len);
	FUNC3(&sb);

	return ret;
}