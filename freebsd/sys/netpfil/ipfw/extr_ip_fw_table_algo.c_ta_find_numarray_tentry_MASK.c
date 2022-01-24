#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct table_info {int dummy; } ;
struct numarray_cfg {int dummy; } ;
struct numarray {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  key; } ;
struct TYPE_6__ {TYPE_1__ k; } ;
typedef  TYPE_2__ ipfw_obj_tentry ;

/* Variables and functions */
 int ENOENT ; 
 struct numarray* FUNC0 (struct table_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void*,struct table_info*,struct numarray*,TYPE_2__*) ; 

__attribute__((used)) static int
FUNC2(void *ta_state, struct table_info *ti,
    ipfw_obj_tentry *tent)
{
	struct numarray_cfg *cfg;
	struct numarray *ri;

	cfg = (struct numarray_cfg *)ta_state;

	ri = FUNC0(ti, &tent->k.key);

	if (ri != NULL) {
		FUNC1(ta_state, ti, ri, tent);
		return (0);
	}

	return (ENOENT);
}