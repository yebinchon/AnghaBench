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
struct fw_info {int /*<<< orphan*/  fw_mod_name; int /*<<< orphan*/  kld_name; } ;
struct firmware {int dummy; } ;
struct adapter {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct fw_info* FUNC2 (int /*<<< orphan*/ ) ; 
 struct firmware* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct adapter *sc, const struct firmware **dcfg,
    const struct firmware **fw)
{
	struct fw_info *fw_info;

	*dcfg = NULL;
	if (fw != NULL)
		*fw = NULL;

	fw_info = FUNC2(FUNC0(sc));
	if (fw_info == NULL) {
		FUNC1(sc->dev,
		    "unable to look up firmware information for chip %d.\n",
		    FUNC0(sc));
		return (EINVAL);
	}

	*dcfg = FUNC3(fw_info->kld_name);
	if (*dcfg != NULL) {
		if (fw != NULL)
			*fw = FUNC3(fw_info->fw_mod_name);
		return (0);
	}

	return (ENOENT);
}