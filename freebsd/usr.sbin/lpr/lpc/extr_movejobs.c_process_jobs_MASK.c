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
struct jobspec_hdr {int dummy; } ;
typedef  int /*<<< orphan*/  process_jqe ;

/* Variables and functions */
 int /*<<< orphan*/  SCQ_JSORDER ; 
 int /*<<< orphan*/  FUNC0 (struct jobspec_hdr*) ; 
 int /*<<< orphan*/  FUNC1 (struct jobspec_hdr*) ; 
 int /*<<< orphan*/  nitems ; 
 int FUNC2 (char*,struct jobspec_hdr*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  queue ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct jobspec_hdr*,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static int
FUNC5(int argc, char *argv[], process_jqe process_rtn, void *myinfo)
{
	struct jobspec_hdr jobs_wanted;
	int i, matchcnt, pjres;

	FUNC0(&jobs_wanted);
	for (i = 0; i < argc; i++) {
		pjres = FUNC2(argv[i], &jobs_wanted);
		if (pjres == 0) {
			FUNC3("\tinvalid job specifier: %s\n", argv[i]);
			continue;
		}
	}
	matchcnt = FUNC4(nitems, queue, SCQ_JSORDER, &jobs_wanted,
	    process_rtn, myinfo);

	FUNC1(&jobs_wanted);
	return (matchcnt);
}