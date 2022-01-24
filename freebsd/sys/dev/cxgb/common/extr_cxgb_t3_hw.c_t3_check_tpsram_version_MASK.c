#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_7__ {scalar_t__ rev; } ;
struct TYPE_8__ {TYPE_1__ params; } ;
typedef  TYPE_2__ adapter_t ;

/* Variables and functions */
 int /*<<< orphan*/  A_TP_EMBED_OP_FIELD1 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int EINVAL ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ T3_REV_A ; 
 unsigned int TP_VERSION_MAJOR ; 
 unsigned int TP_VERSION_MINOR ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 

int FUNC5(adapter_t *adapter)
{
	int ret;
	u32 vers;
	unsigned int major, minor;

	if (adapter->params.rev == T3_REV_A)
		return 0;


	ret = FUNC3(adapter, &vers);
	if (ret)
		return ret;

	vers = FUNC4(adapter, A_TP_EMBED_OP_FIELD1);

	major = FUNC1(vers);
	minor = FUNC2(vers);

	if (major == TP_VERSION_MAJOR && minor == TP_VERSION_MINOR)
		return 0;
	else {
		FUNC0(adapter, "found wrong TP version (%u.%u), "
		       "driver compiled for version %d.%d\n", major, minor,
		       TP_VERSION_MAJOR, TP_VERSION_MINOR);
	}
	return -EINVAL;
}