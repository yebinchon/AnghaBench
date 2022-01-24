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
struct array {size_t size; struct array* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct array*) ; 
 int /*<<< orphan*/  FUNC1 (struct array*) ; 

__attribute__((used)) static __inline void
FUNC2(struct array *a)
{
	size_t i;

	if (a == NULL)
		return;
	for (i = 0; i < a->size; i++)
		FUNC1(&a->data[i]);
	FUNC0(a->data);
	FUNC0(a);
}