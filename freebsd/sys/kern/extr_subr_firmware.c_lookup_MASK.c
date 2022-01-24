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
struct TYPE_2__ {int /*<<< orphan*/ * name; } ;
struct priv_fw {TYPE_1__ fw; } ;

/* Variables and functions */
 int FIRMWARE_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct priv_fw*) ; 
 struct priv_fw* firmware_table ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct priv_fw *
FUNC2(const char *name, struct priv_fw **empty_slot)
{
	struct priv_fw *fp = NULL;
	struct priv_fw *dummy;
	int i;

	if (empty_slot == NULL)
		empty_slot = &dummy;
	*empty_slot = NULL;
	for (i = 0; i < FIRMWARE_MAX; i++) {
		fp = &firmware_table[i];
		if (fp->fw.name != NULL && FUNC1(name, fp->fw.name) == 0)
			break;
		else if (!FUNC0(fp))
			*empty_slot = fp;
	}
	return (i < FIRMWARE_MAX ) ? fp : NULL;
}