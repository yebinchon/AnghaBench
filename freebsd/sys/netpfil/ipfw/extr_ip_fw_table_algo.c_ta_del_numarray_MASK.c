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
typedef  int uint32_t ;
struct tentry_info {int /*<<< orphan*/  value; } ;
struct table_info {scalar_t__ data; } ;
struct TYPE_2__ {int /*<<< orphan*/  number; } ;
struct ta_buf_numarray {TYPE_1__ na; } ;
struct numarray_cfg {scalar_t__ used; int /*<<< orphan*/  main_ptr; } ;
struct numarray {int /*<<< orphan*/  value; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  compare_numarray ; 
 struct numarray* FUNC2 (struct table_info*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(void *ta_state, struct table_info *ti, struct tentry_info *tei,
    void *ta_buf, uint32_t *pnum)
{
	struct numarray_cfg *cfg;
	struct ta_buf_numarray *tb;
	struct numarray *ri;
	int res;

	tb = (struct ta_buf_numarray *)ta_buf;
	cfg = (struct numarray_cfg *)ta_state;

	ri = FUNC2(ti, &tb->na.number);
	if (ri == NULL)
		return (ENOENT);

	tei->value = ri->value;
	
	res = FUNC1(&tb->na.number, cfg->main_ptr, cfg->used,
	    sizeof(struct numarray), compare_numarray);

	FUNC0(res == 1, ("number %u does not exist", tb->na.number));
	cfg->used--;
	ti->data = cfg->used;
	*pnum = 1;

	return (0);
}