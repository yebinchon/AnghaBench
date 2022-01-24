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
 int /*<<< orphan*/  FUNC0 (struct rulehead*,struct rule*,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,struct rule**) ; 
 int /*<<< orphan*/  r_entries ; 
 scalar_t__ FUNC2 (char*) ; 
 char* FUNC3 (char**,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct rulehead*) ; 

__attribute__((used)) static int
FUNC5(char *string, struct rulehead *head)
{
	struct rule *new;
	char *element;
	int error;

	error = 0;
	while ((element = FUNC3(&string, ",")) != NULL) {
		if (FUNC2(element) == 0)
			continue;
		error = FUNC1(element, &new);
		if (error)
			goto out;
		FUNC0(head, new, r_entries);
	}
out:
	if (error != 0)
		FUNC4(head);
	return (error);
}