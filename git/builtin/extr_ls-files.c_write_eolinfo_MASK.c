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
struct stat {int /*<<< orphan*/  st_mode; } ;
struct index_state {int dummy; } ;
struct cache_entry {int /*<<< orphan*/  name; int /*<<< orphan*/  ce_mode; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (struct index_state const*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (struct index_state const*,char const*) ; 
 char* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,char const*,char const*) ; 
 scalar_t__ show_eol ; 

__attribute__((used)) static void FUNC6(const struct index_state *istate,
			  const struct cache_entry *ce, const char *path)
{
	if (show_eol) {
		struct stat st;
		const char *i_txt = "";
		const char *w_txt = "";
		const char *a_txt = FUNC2(istate, path);
		if (ce && FUNC0(ce->ce_mode))
			i_txt = FUNC1(istate,
							       ce->name);
		if (!FUNC4(path, &st) && FUNC0(st.st_mode))
			w_txt = FUNC3(path);
		FUNC5("i/%-5s w/%-5s attr/%-17s\t", i_txt, w_txt, a_txt);
	}
}