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
struct repository {int dummy; } ;
struct commit_list {struct commit* item; struct commit_list* next; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  all_flags ; 
 int /*<<< orphan*/  FUNC0 (struct commit*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,struct commit**,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct commit_list*) ; 
 int /*<<< orphan*/  FUNC3 (struct commit*,struct commit_list**) ; 
 int /*<<< orphan*/  FUNC4 (struct commit**) ; 
 int /*<<< orphan*/  FUNC5 (struct commit_list*) ; 
 struct commit_list* FUNC6 (struct repository*,struct commit*,int,struct commit**) ; 
 int FUNC7 (struct repository*,struct commit**,int) ; 
 struct commit** FUNC8 (int,int) ; 

__attribute__((used)) static struct commit_list *FUNC9(struct repository *r,
						  struct commit *one,
						  int n,
						  struct commit **twos,
						  int cleanup)
{
	struct commit_list *list;
	struct commit **rslt;
	struct commit_list *result;
	int cnt, i;

	result = FUNC6(r, one, n, twos);
	for (i = 0; i < n; i++) {
		if (one == twos[i])
			return result;
	}
	if (!result || !result->next) {
		if (cleanup) {
			FUNC0(one, all_flags);
			FUNC1(n, twos, all_flags);
		}
		return result;
	}

	/* There are more than one */
	cnt = FUNC2(result);
	rslt = FUNC8(cnt, sizeof(*rslt));
	for (list = result, i = 0; list; list = list->next)
		rslt[i++] = list->item;
	FUNC5(result);

	FUNC0(one, all_flags);
	FUNC1(n, twos, all_flags);

	cnt = FUNC7(r, rslt, cnt);
	result = NULL;
	for (i = 0; i < cnt; i++)
		FUNC3(rslt[i], &result);
	FUNC4(rslt);
	return result;
}