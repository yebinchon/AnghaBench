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
struct hdr_list {char* h_name; struct hdr_list* h_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 struct hdr_list* FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 struct hdr_list* htab ; 
 char* FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char*,char) ; 
 scalar_t__ FUNC6 (char*,char*,int) ; 
 char* FUNC7 (char const*,char) ; 

void
FUNC8(const char *file)
{
	char *s;
	struct hdr_list *hl;

	if ((s = FUNC7(file, '/')) != NULL)
		s = FUNC4(s + 1);
	else
		s = FUNC4(file);

	if (FUNC5(s, '_') && FUNC6(s, "opt_", 4) != 0) {
		FUNC3(s);
		return;
	}
	for (hl = htab; hl != NULL; hl = hl->h_next) {
		if (FUNC1(s, hl->h_name)) {
			FUNC3(s);
			return;
		}
	}
	hl = FUNC0(1, sizeof(*hl));
	if (hl == NULL)
		FUNC2(EXIT_FAILURE, "calloc");
	hl->h_name = s;
	hl->h_next = htab;
	htab = hl;
}