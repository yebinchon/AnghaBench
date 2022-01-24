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
 int /*<<< orphan*/  GID_WHEEL ; 
#define  MOD_LOAD 130 
#define  MOD_SHUTDOWN 129 
#define  MOD_UNLOAD 128 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  speaker_dev ; 
 int /*<<< orphan*/  spkr_cdevsw ; 

__attribute__((used)) static int
FUNC2(module_t mod, int type, void *data)
{
	int error = 0;

	switch(type) {
	case MOD_LOAD: 
		speaker_dev = FUNC1(&spkr_cdevsw, 0,
		    UID_ROOT, GID_WHEEL, 0600, "speaker");
		break;
	case MOD_SHUTDOWN:
	case MOD_UNLOAD:
		FUNC0(speaker_dev);
		break;
	default:
		error = EOPNOTSUPP;
	}
	return (error);
}