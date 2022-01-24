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
struct dn_fsk {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  fshash; } ;

/* Variables and functions */
 int /*<<< orphan*/  DNHT_REMOVE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int DN_DELETE_FS ; 
 int DN_DETACH ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (char*,int,struct dn_fsk*) ; 
 TYPE_1__ dn_cfg ; 
 struct dn_fsk* FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct dn_fsk*,int) ; 

__attribute__((used)) static int
FUNC5(int i, int locked)
{
	struct dn_fsk *fs;
	int err = 0;

	if (!locked)
		FUNC0();
	fs = FUNC3(dn_cfg.fshash, i, DNHT_REMOVE, NULL);
	FUNC2("fs %d found %p", i, fs);
	if (fs) {
		FUNC4(fs, DN_DETACH | DN_DELETE_FS);
		err = 0;
	} else
		err = EINVAL;
	if (!locked)
		FUNC1();
	return err;
}