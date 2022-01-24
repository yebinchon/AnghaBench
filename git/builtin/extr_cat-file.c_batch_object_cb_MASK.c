#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct object_id {int dummy; } ;
struct object_cb_data {TYPE_1__* expand; int /*<<< orphan*/  opt; int /*<<< orphan*/  scratch; } ;
struct TYPE_2__ {int /*<<< orphan*/  oid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct object_id const*) ; 

__attribute__((used)) static int FUNC2(const struct object_id *oid, void *vdata)
{
	struct object_cb_data *data = vdata;
	FUNC1(&data->expand->oid, oid);
	FUNC0(NULL, data->scratch, data->opt, data->expand);
	return 0;
}