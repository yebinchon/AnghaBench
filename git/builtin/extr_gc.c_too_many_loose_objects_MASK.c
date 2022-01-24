#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dirent {char* d_name; } ;
struct TYPE_2__ {int hexsz; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gc_auto_threshold ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 struct dirent* FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned int const FUNC5 (char*,char*) ; 
 TYPE_1__* the_hash_algo ; 

__attribute__((used)) static int FUNC6(void)
{
	/*
	 * Quickly check if a "gc" is needed, by estimating how
	 * many loose objects there are.  Because SHA-1 is evenly
	 * distributed, we can check only one and get a reasonable
	 * estimate.
	 */
	DIR *dir;
	struct dirent *ent;
	int auto_threshold;
	int num_loose = 0;
	int needed = 0;
	const unsigned hexsz_loose = the_hash_algo->hexsz - 2;

	dir = FUNC3(FUNC2("objects/17"));
	if (!dir)
		return 0;

	auto_threshold = FUNC0(gc_auto_threshold, 256);
	while ((ent = FUNC4(dir)) != NULL) {
		if (FUNC5(ent->d_name, "0123456789abcdef") != hexsz_loose ||
		    ent->d_name[hexsz_loose] != '\0')
			continue;
		if (++num_loose > auto_threshold) {
			needed = 1;
			break;
		}
	}
	FUNC1(dir);
	return needed;
}