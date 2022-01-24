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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 char* FUNC4 () ; 
 char* FUNC5 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*) ; 

void FUNC8(const char **read_bad, const char **read_good)
{
	struct strbuf str = STRBUF_INIT;
	const char *filename = FUNC4();
	FILE *fp = FUNC3(filename, "r");

	if (!fp) {
		if (errno == ENOENT) {
			*read_bad = "bad";
			*read_good = "good";
			return;
		} else {
			FUNC1(FUNC0("could not read file '%s'"), filename);
		}
	} else {
		FUNC6(&str, fp);
		*read_bad = FUNC5(&str, NULL);
		FUNC6(&str, fp);
		*read_good = FUNC5(&str, NULL);
	}
	FUNC7(&str);
	FUNC2(fp);
}