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
struct iwmbt_version {int hw_variant; int hw_revision; int fw_revision; } ;
struct iwmbt_boot_params {int dev_revid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**,char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

char *
FUNC2(struct iwmbt_version *ver, struct iwmbt_boot_params *params,
    const char *prefix, const char *suffix)
{
	char *fwname;

	switch (ver->hw_variant) {
	case 0x0b:	/* 8260 */
	case 0x0c:	/* 8265 */
		FUNC0(&fwname, "%s/ibt-%u-%u.%s",
		    prefix,
		    FUNC1(ver->hw_variant),
		    FUNC1(params->dev_revid),
		    suffix);
		break;

	case 0x11:	/* 9560 */
	case 0x12:	/* 9260 */
	case 0x13:
	case 0x14:	/* 22161 */
		FUNC0(&fwname, "%s/ibt-%u-%u-%s.%s",
		    prefix,
		    FUNC1(ver->hw_variant),
		    FUNC1(ver->hw_revision),
		    FUNC1(ver->fw_revision),
		    suffix);
		break;

	default:
		fwname = NULL;
	}

	return (fwname);
}