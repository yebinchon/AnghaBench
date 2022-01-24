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
struct vtnet_tx_header {int dummy; } ;
typedef  int /*<<< orphan*/  module_t ;

/* Variables and functions */
 int EBUSY ; 
 int EOPNOTSUPP ; 
#define  MOD_LOAD 131 
#define  MOD_QUIESCE 130 
#define  MOD_SHUTDOWN 129 
#define  MOD_UNLOAD 128 
 int /*<<< orphan*/ * FUNC0 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * vtnet_tx_header_zone ; 

__attribute__((used)) static int
FUNC3(module_t mod, int type, void *unused)
{
	int error = 0;
	static int loaded = 0;

	switch (type) {
	case MOD_LOAD:
		if (loaded++ == 0)
			vtnet_tx_header_zone = FUNC0("vtnet_tx_hdr",
				sizeof(struct vtnet_tx_header),
				NULL, NULL, NULL, NULL, 0, 0);
		break;
	case MOD_QUIESCE:
		if (FUNC2(vtnet_tx_header_zone) > 0)
			error = EBUSY;
		break;
	case MOD_UNLOAD:
		if (--loaded == 0) {
			FUNC1(vtnet_tx_header_zone);
			vtnet_tx_header_zone = NULL;
		}
		break;
	case MOD_SHUTDOWN:
		break;
	default:
		error = EOPNOTSUPP;
		break;
	}

	return (error);
}