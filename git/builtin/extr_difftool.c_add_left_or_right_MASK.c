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
struct pair_entry {char* left; char* right; int /*<<< orphan*/  entry; } ;
struct hashmap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pair_entry*,char const*,char const*) ; 
 int /*<<< orphan*/  PATH_MAX ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/  FUNC1 (struct pair_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct hashmap*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct pair_entry* FUNC4 (struct hashmap*,struct pair_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct hashmap *map, const char *path,
			      const char *content, int is_right)
{
	struct pair_entry *e, *existing;

	FUNC0(e, path, path);
	FUNC3(&e->entry, FUNC5(path));
	existing = FUNC4(map, e, entry, NULL);
	if (existing) {
		FUNC1(e);
		e = existing;
	} else {
		e->left[0] = e->right[0] = '\0';
		FUNC2(map, &e->entry);
	}
	FUNC6(is_right ? e->right : e->left, content, PATH_MAX);
}