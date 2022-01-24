#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {char* name; int mode; } ;
struct TYPE_9__ {TYPE_4__ attr; int /*<<< orphan*/ * store; int /*<<< orphan*/  show; } ;
struct TYPE_8__ {TYPE_4__ attr; int /*<<< orphan*/  store; int /*<<< orphan*/  show; } ;
struct mlx4_port {scalar_t__ slave; TYPE_3__ smi_enabled; int /*<<< orphan*/  kobj; TYPE_2__ enable_smi_admin; TYPE_1__* dev; int /*<<< orphan*/  port_num; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  ib_dev; } ;

/* Variables and functions */
 scalar_t__ IB_LINK_LAYER_ETHERNET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  sysfs_show_enable_smi_admin ; 
 int /*<<< orphan*/  sysfs_show_smi_enabled ; 
 int /*<<< orphan*/  sysfs_store_enable_smi_admin ; 

__attribute__((used)) static int FUNC6(struct mlx4_port *p)
{
	int is_eth = FUNC2(&p->dev->ib_dev, p->port_num) ==
			IB_LINK_LAYER_ETHERNET;
	int ret;

	/* do not display entries if eth transport, or if master */
	if (is_eth || p->slave == FUNC0(p->dev->dev))
		return 0;

	FUNC3(&p->smi_enabled.attr);
	p->smi_enabled.show = sysfs_show_smi_enabled;
	p->smi_enabled.store = NULL;
	p->smi_enabled.attr.name = "smi_enabled";
	p->smi_enabled.attr.mode = 0444;
	ret = FUNC4(&p->kobj, &p->smi_enabled.attr);
	if (ret) {
		FUNC1("failed to create smi_enabled\n");
		return ret;
	}

	FUNC3(&p->enable_smi_admin.attr);
	p->enable_smi_admin.show = sysfs_show_enable_smi_admin;
	p->enable_smi_admin.store = sysfs_store_enable_smi_admin;
	p->enable_smi_admin.attr.name = "enable_smi_admin";
	p->enable_smi_admin.attr.mode = 0644;
	ret = FUNC4(&p->kobj, &p->enable_smi_admin.attr);
	if (ret) {
		FUNC1("failed to create enable_smi_admin\n");
		FUNC5(&p->kobj, &p->smi_enabled.attr);
		return ret;
	}
	return 0;
}