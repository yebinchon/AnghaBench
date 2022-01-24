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
typedef  int /*<<< orphan*/  module_t ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  MOD_LOAD 129 
#define  MOD_UNLOAD 128 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  ecookie ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  me_encap_cfg ; 
 int /*<<< orphan*/  me_srcaddr ; 
 int /*<<< orphan*/  me_srcaddrtab ; 

__attribute__((used)) static int
FUNC4(module_t mod, int type, void *data)
{

	switch (type) {
	case MOD_LOAD:
		me_srcaddrtab = FUNC2(me_srcaddr,
		    NULL, M_WAITOK);
		ecookie = FUNC0(&me_encap_cfg, NULL, M_WAITOK);
		break;
	case MOD_UNLOAD:
		FUNC1(ecookie);
		FUNC3(me_srcaddrtab);
		break;
	default:
		return (EOPNOTSUPP);
	}
	return (0);
}