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
struct blame_entry {struct blame_entry* next; int /*<<< orphan*/  suspect; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct blame_entry*,struct blame_entry*,int) ; 

__attribute__((used)) static void FUNC3(struct blame_entry ***queue,
		      struct blame_entry *dst, struct blame_entry *src)
{
	FUNC1(src->suspect);
	FUNC0(dst->suspect);
	FUNC2(dst, src, sizeof(*src));
	dst->next = **queue;
	**queue = dst;
	*queue = &dst->next;
}