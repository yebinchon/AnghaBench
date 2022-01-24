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
struct knote {scalar_t__ kn_filter; struct audit_pipe* kn_hook; int /*<<< orphan*/ * kn_fop; } ;
struct cdev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  si_note; } ;
struct audit_pipe {TYPE_1__ ap_selinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct audit_pipe*) ; 
 int /*<<< orphan*/  FUNC1 (struct audit_pipe*) ; 
 int EINVAL ; 
 scalar_t__ EVFILT_READ ; 
 int /*<<< orphan*/  audit_pipe_read_filterops ; 
 int FUNC2 (void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct knote*,int) ; 

__attribute__((used)) static int
FUNC4(struct cdev *dev, struct knote *kn)
{
	struct audit_pipe *ap;
	int error;

	error = FUNC2((void **)&ap);
	if (error != 0)
		return (error);
	if (kn->kn_filter != EVFILT_READ)
		return (EINVAL);

	kn->kn_fop = &audit_pipe_read_filterops;
	kn->kn_hook = ap;

	FUNC0(ap);
	FUNC3(&ap->ap_selinfo.si_note, kn, 1);
	FUNC1(ap);
	return (0);
}