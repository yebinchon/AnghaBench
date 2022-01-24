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
struct entry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct entry* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  en_iter ; 
 int /*<<< orphan*/  mainlst ; 

__attribute__((used)) static void
FUNC3(void)
{
	struct entry *obj;

	while (FUNC0(&mainlst) == 0) {
		obj = FUNC1(&mainlst);
		FUNC2(&mainlst, obj, en_iter);
	}
}