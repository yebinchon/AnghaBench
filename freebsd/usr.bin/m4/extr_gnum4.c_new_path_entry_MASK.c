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
struct path_entry {scalar_t__ next; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 struct path_entry* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

__attribute__((used)) static struct path_entry *
FUNC3(const char *dirname)
{
	struct path_entry *n;

	n = FUNC1(sizeof(struct path_entry));
	if (!n)
		FUNC0(1, "out of memory");
	n->name = FUNC2(dirname);
	n->next = 0;
	return n;
}