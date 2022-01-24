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
 int /*<<< orphan*/  IFT_IEEE1394 ; 
#define  MOD_LOAD 129 
#define  MOD_UNLOAD 128 
 int /*<<< orphan*/  firewire_alloc ; 
 int /*<<< orphan*/  firewire_free ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(module_t mod, int type, void *data)
{

	switch (type) {
	case MOD_LOAD:
		FUNC1(IFT_IEEE1394,
		    firewire_alloc, firewire_free);
		break;
	case MOD_UNLOAD:
		FUNC0(IFT_IEEE1394);
		break;
	default:
		return (EOPNOTSUPP);
	}

	return (0);
}