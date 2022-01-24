#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct repository {int dummy; } ;
struct blame_origin {int /*<<< orphan*/  mode; int /*<<< orphan*/  blob_oid; int /*<<< orphan*/  path; TYPE_2__* commit; } ;
struct TYPE_3__ {int /*<<< orphan*/  oid; } ;
struct TYPE_4__ {TYPE_1__ object; } ;

/* Variables and functions */
 scalar_t__ OBJ_BLOB ; 
 int /*<<< orphan*/  S_IFINVALID ; 
 scalar_t__ FUNC0 (struct repository*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct repository*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct repository *r,
				   struct blame_origin *origin)
{
	if (!FUNC1(&origin->blob_oid))
		return 0;
	if (FUNC0(r, &origin->commit->object.oid, origin->path, &origin->blob_oid, &origin->mode))
		goto error_out;
	if (FUNC2(r, &origin->blob_oid, NULL) != OBJ_BLOB)
		goto error_out;
	return 0;
 error_out:
	FUNC3(&origin->blob_oid);
	origin->mode = S_IFINVALID;
	return -1;
}