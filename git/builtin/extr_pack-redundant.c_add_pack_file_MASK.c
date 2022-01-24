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
struct packed_git {struct packed_git* next; int /*<<< orphan*/  pack_name; } ;
struct pack_list {int dummy; } ;

/* Variables and functions */
 struct pack_list* FUNC0 (struct packed_git*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 struct packed_git* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static struct pack_list * FUNC5(const char *filename)
{
	struct packed_git *p = FUNC2(the_repository);

	if (FUNC3(filename) < 40)
		FUNC1("Bad pack filename: %s", filename);

	while (p) {
		if (FUNC4(p->pack_name, filename))
			return FUNC0(p);
		p = p->next;
	}
	FUNC1("Filename %s not found in packed_git", filename);
}