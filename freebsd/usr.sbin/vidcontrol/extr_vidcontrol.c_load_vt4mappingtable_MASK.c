#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {void* len; void* dst; int /*<<< orphan*/  src; } ;
typedef  TYPE_1__ vfnt_map_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (unsigned int,int) ; 
 int FUNC3 (TYPE_1__*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static vfnt_map_t *
FUNC6(unsigned int nmappings, FILE *f)
{
	vfnt_map_t *t;
	unsigned int i;

	if (nmappings == 0)
		return (NULL);

	if ((t = FUNC2(nmappings, sizeof(*t))) == NULL) {
		FUNC5("calloc");
		return (NULL);
	}

	if (FUNC3(t, sizeof *t * nmappings, 1, f) != 1) {
		FUNC5("read mappings");
		FUNC4(t);
		return (NULL);
	}

	for (i = 0; i < nmappings; i++) {
		t[i].src = FUNC1(t[i].src);
		t[i].dst = FUNC0(t[i].dst);
		t[i].len = FUNC0(t[i].len);
	}

	return (t);
}