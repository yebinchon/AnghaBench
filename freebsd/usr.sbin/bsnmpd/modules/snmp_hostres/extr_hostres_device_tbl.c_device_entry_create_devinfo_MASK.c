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
struct devinfo_dev {int /*<<< orphan*/  dd_desc; int /*<<< orphan*/ * dd_location; int /*<<< orphan*/ * dd_name; } ;
struct device_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct device_entry* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct device_entry *
FUNC2(const struct devinfo_dev *dev_p)
{

	FUNC0(dev_p->dd_name != NULL);
	FUNC0(dev_p->dd_location != NULL);

	return (FUNC1(dev_p->dd_name, dev_p->dd_location,
	    dev_p->dd_desc));
}