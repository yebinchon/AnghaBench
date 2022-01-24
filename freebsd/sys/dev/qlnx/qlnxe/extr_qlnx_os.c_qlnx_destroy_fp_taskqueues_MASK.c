#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct qlnx_fastpath {int /*<<< orphan*/ * fp_taskqueue; int /*<<< orphan*/  fp_task; } ;
struct TYPE_3__ {int num_rss; struct qlnx_fastpath* fp_array; } ;
typedef  TYPE_1__ qlnx_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(qlnx_host_t *ha)
{
	int			i;
	struct qlnx_fastpath	*fp;

	for (i = 0; i < ha->num_rss; i++) {

                fp = &ha->fp_array[i];

		if (fp->fp_taskqueue != NULL) {

			FUNC0(fp->fp_taskqueue, &fp->fp_task);
			FUNC1(fp->fp_taskqueue);
			fp->fp_taskqueue = NULL;
		}
	}
	return;
}