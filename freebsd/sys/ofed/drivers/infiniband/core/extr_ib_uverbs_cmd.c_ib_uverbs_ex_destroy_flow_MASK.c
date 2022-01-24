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
struct ib_uverbs_file {int /*<<< orphan*/  mutex; int /*<<< orphan*/  ucontext; } ;
struct ib_uverbs_destroy_flow {int /*<<< orphan*/  flow_handle; scalar_t__ comp_mask; } ;
struct ib_uobject {int /*<<< orphan*/  list; scalar_t__ live; struct ib_flow* object; } ;
struct ib_udata {int inlen; } ;
struct ib_flow {int dummy; } ;
struct ib_device {int dummy; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct ib_uverbs_destroy_flow*,struct ib_udata*,int) ; 
 int FUNC1 (struct ib_flow*) ; 
 int /*<<< orphan*/  ib_uverbs_rule_idr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct ib_uobject*) ; 
 struct ib_uobject* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ib_uobject*) ; 
 int /*<<< orphan*/  FUNC8 (struct ib_uobject*) ; 

int FUNC9(struct ib_uverbs_file *file,
			      struct ib_device *ib_dev,
			      struct ib_udata *ucore,
			      struct ib_udata *uhw)
{
	struct ib_uverbs_destroy_flow	cmd;
	struct ib_flow			*flow_id;
	struct ib_uobject		*uobj;
	int				ret;

	if (ucore->inlen < sizeof(cmd))
		return -EINVAL;

	ret = FUNC0(&cmd, ucore, sizeof(cmd));
	if (ret)
		return ret;

	if (cmd.comp_mask)
		return -EINVAL;

	uobj = FUNC3(&ib_uverbs_rule_idr, cmd.flow_handle,
			      file->ucontext);
	if (!uobj)
		return -EINVAL;
	flow_id = uobj->object;

	ret = FUNC1(flow_id);
	if (!ret)
		uobj->live = 0;

	FUNC8(uobj);

	FUNC2(&ib_uverbs_rule_idr, uobj);

	FUNC5(&file->mutex);
	FUNC4(&uobj->list);
	FUNC6(&file->mutex);

	FUNC7(uobj);

	return ret;
}