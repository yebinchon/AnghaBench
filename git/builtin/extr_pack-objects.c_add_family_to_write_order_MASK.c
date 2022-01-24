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
struct object_entry {int dummy; } ;

/* Variables and functions */
 struct object_entry* FUNC0 (struct object_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct object_entry**,unsigned int*,struct object_entry*) ; 

__attribute__((used)) static void FUNC2(struct object_entry **wo,
				      unsigned int *endp,
				      struct object_entry *e)
{
	struct object_entry *root;

	for (root = e; FUNC0(root); root = FUNC0(root))
		; /* nothing */
	FUNC1(wo, endp, root);
}