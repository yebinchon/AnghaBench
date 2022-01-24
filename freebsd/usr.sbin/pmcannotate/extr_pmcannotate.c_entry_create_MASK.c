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
struct entry {uintptr_t en_pc; uintptr_t en_ostart; uintptr_t en_oend; int en_nsamples; int /*<<< orphan*/ * en_name; } ;

/* Variables and functions */
 struct entry* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct entry*) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 

__attribute__((used)) static struct entry *
FUNC3(const char *name, uintptr_t pc, uintptr_t start, uintptr_t end)
{
	struct entry *obj;

	obj = FUNC0(1, sizeof(struct entry));
	if (obj == NULL)
		return (NULL);
	obj->en_name = FUNC2(name);
	if (obj->en_name == NULL) {
		FUNC1(obj);
		return (NULL);
	}
	obj->en_pc = pc;
	obj->en_ostart = start;
	obj->en_oend = end;
	obj->en_nsamples = 1;
	return (obj);
}