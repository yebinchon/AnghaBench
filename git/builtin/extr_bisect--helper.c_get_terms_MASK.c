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
struct bisect_terms {void* term_good; void* term_bad; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct bisect_terms*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 void* FUNC4 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 

__attribute__((used)) static int FUNC7(struct bisect_terms *terms)
{
	struct strbuf str = STRBUF_INIT;
	FILE *fp = NULL;
	int res = 0;

	fp = FUNC1(FUNC3(), "r");
	if (!fp) {
		res = -1;
		goto finish;
	}

	FUNC2(terms);
	FUNC5(&str, fp);
	terms->term_bad = FUNC4(&str, NULL);
	FUNC5(&str, fp);
	terms->term_good = FUNC4(&str, NULL);

finish:
	if (fp)
		FUNC0(fp);
	FUNC6(&str);
	return res;
}