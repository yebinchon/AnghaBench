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
struct veriexec_devhead {int dummy; } ;
struct sbuf {int dummy; } ;
typedef  int /*<<< orphan*/  fpdbs ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sbuf*,struct veriexec_devhead*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sbuf*,char*,char const*) ; 
 int /*<<< orphan*/  ve_mutex ; 
 int /*<<< orphan*/  veriexec_dev_head ; 
 int /*<<< orphan*/  veriexec_file_dev_head ; 

void
FUNC4(struct sbuf *sbp)
{
	struct {
		struct veriexec_devhead *h;
		const char *name;
	} fpdbs[] = {
		{ &veriexec_file_dev_head, "regular files" },
		{ &veriexec_dev_head, "executable files" },
	};
	int i;

	FUNC1(&ve_mutex);
	for (i = 0; i < sizeof(fpdbs)/sizeof(fpdbs[0]); i++) {
		FUNC3(sbp, "%s fingerprint db:\n", fpdbs[i].name);
		FUNC0(sbp, fpdbs[i].h);
	}
	FUNC2(&ve_mutex);
}