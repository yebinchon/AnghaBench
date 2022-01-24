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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  type; } ;
struct fs_fte {unsigned int index; int /*<<< orphan*/  action; int /*<<< orphan*/  dests; int /*<<< orphan*/  flow_tag; scalar_t__ dests_size; TYPE_1__ base; int /*<<< orphan*/  val; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct fs_fte* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FS_TYPE_FLOW_ENTRY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct fs_fte* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static struct fs_fte *FUNC4(u8 action,
				   u32 flow_tag,
				   u32 *match_value,
				   unsigned int index)
{
	struct fs_fte *fte;


	fte = FUNC2(sizeof(*fte), GFP_KERNEL);
	if (!fte)
		return FUNC0(-ENOMEM);

	FUNC3(fte->val, match_value, sizeof(fte->val));
	fte->base.type =  FS_TYPE_FLOW_ENTRY;
	fte->dests_size = 0;
	fte->flow_tag = flow_tag;
	fte->index = index;
	FUNC1(&fte->dests);
	fte->action = action;

	return fte;
}