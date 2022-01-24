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
struct array {size_t size; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct array*,size_t) ; 
 struct array* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct array *
FUNC3(const struct array *a)
{
	struct array *n;
	size_t i;

	if (a == NULL)
		return (NULL);
	n = FUNC1();
	FUNC0(n, a->size);
	for (i = 0; i < a->size; i++)
		FUNC2(&a->data[i], &n->data[i]);
	return (n);
}