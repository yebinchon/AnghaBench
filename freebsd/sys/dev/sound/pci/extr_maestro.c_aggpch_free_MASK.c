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
struct agg_info {int /*<<< orphan*/  buf_dmat; } ;
struct agg_chinfo {int /*<<< orphan*/  map; int /*<<< orphan*/  buffer; struct agg_info* parent; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(kobj_t obj, void *data)
{
	struct agg_chinfo *ch = data;
	struct agg_info *ess = ch->parent;

	/* free up buffer - called after channel stopped */
	FUNC0(ess->buf_dmat, FUNC1(ch->buffer), ch->map);

	/* return 0 if ok */
	return 0;
}