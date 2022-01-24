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
struct knote {int /*<<< orphan*/ * kn_fop; struct apm_clone_data* kn_hook; } ;
struct cdev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  si_note; } ;
struct apm_clone_data {TYPE_1__ sel_read; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpi ; 
 int /*<<< orphan*/  apm_readfiltops ; 
 int /*<<< orphan*/  FUNC2 (void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct knote*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct cdev *dev, struct knote *kn)
{
	struct	apm_clone_data *clone;

	FUNC2((void **)&clone);
	FUNC0(acpi);
	kn->kn_hook = clone;
	kn->kn_fop = &apm_readfiltops;
	FUNC3(&clone->sel_read.si_note, kn, 0);
	FUNC1(acpi);
	return (0);
}