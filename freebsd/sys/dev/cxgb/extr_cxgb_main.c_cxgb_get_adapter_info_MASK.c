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
struct cxgb_ident {int /*<<< orphan*/  index; } ;
struct adapter_info {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct cxgb_ident* FUNC0 (int /*<<< orphan*/ ) ; 
 struct adapter_info* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const struct adapter_info *
FUNC2(device_t dev)
{
	struct cxgb_ident *id;
	const struct adapter_info *ai;

	id = FUNC0(dev);
	if (id == NULL)
		return (NULL);

	ai = FUNC1(id->index);

	return (ai);
}