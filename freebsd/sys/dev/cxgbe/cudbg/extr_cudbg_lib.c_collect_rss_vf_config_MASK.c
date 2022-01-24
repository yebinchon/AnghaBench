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
typedef  int u32 ;
struct rss_vf_conf {int /*<<< orphan*/  rss_vf_vfh; int /*<<< orphan*/  rss_vf_vfl; } ;
struct cudbg_init {struct adapter* adap; } ;
struct cudbg_error {int dummy; } ;
struct cudbg_buffer {scalar_t__ data; } ;
struct adapter {TYPE_1__* chip_params; } ;
struct TYPE_2__ {int vfcount; } ;

/* Variables and functions */
 int FUNC0 (struct cudbg_buffer*,struct cudbg_buffer*) ; 
 int FUNC1 (struct cudbg_buffer*,int,struct cudbg_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct cudbg_buffer*,struct cudbg_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct cudbg_buffer*,struct cudbg_buffer*) ; 

__attribute__((used)) static int FUNC5(struct cudbg_init *pdbg_init,
				 struct cudbg_buffer *dbg_buff,
				 struct cudbg_error *cudbg_err)
{
	struct adapter *padap = pdbg_init->adap;
	struct cudbg_buffer scratch_buff;
	struct rss_vf_conf *vfconf;
	int vf, rc, vf_count;
	u32 size;

	vf_count = padap->chip_params->vfcount;
	size = vf_count * sizeof(*vfconf);

	rc = FUNC1(dbg_buff, size, &scratch_buff);
	if (rc)
		goto err;

	vfconf =  (struct rss_vf_conf *)scratch_buff.data;

	for (vf = 0; vf < vf_count; vf++) {
		FUNC3(padap, vf, &vfconf[vf].rss_vf_vfl,
				      &vfconf[vf].rss_vf_vfh, 1);
	}

	rc = FUNC4(&scratch_buff, dbg_buff);
	if (rc)
		goto err1;

	rc = FUNC0(&scratch_buff, dbg_buff);

err1:
	FUNC2(&scratch_buff, dbg_buff);
err:
	return rc;
}