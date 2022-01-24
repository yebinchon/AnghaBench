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
struct knote {int /*<<< orphan*/ * kn_hook; } ;
struct TYPE_2__ {int /*<<< orphan*/  si_note; } ;
struct fuse_data {TYPE_1__ ks_rsel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct knote*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct knote *kn)
{
	struct fuse_data *data;

	data = (struct fuse_data*)kn->kn_hook;
	FUNC0(data != NULL);
	FUNC1(&data->ks_rsel.si_note, kn, 0);
	kn->kn_hook = NULL;
}