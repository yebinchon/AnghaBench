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
struct rulehead {int dummy; } ;
struct rule {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_PORTACL ; 
 struct rule* FUNC0 (struct rulehead*) ; 
 int /*<<< orphan*/  FUNC1 (struct rulehead*,struct rule*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rule*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  r_entries ; 

__attribute__((used)) static void
FUNC3(struct rulehead *head)
{
	struct rule *rule;

	while ((rule = FUNC0(head)) != NULL) {
		FUNC1(head, rule, r_entries);
		FUNC2(rule, M_PORTACL);
	}
}