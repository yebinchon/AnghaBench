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
struct TYPE_4__ {int /*<<< orphan*/  bv_hd; } ;
struct TYPE_3__ {int /*<<< orphan*/  bv_hd; } ;
struct bufobj {int bo_domain; TYPE_2__ bo_dirty; TYPE_1__ bo_clean; void* bo_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufobj*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int volatile*,int) ; 
 int buf_domains ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

void
FUNC4(struct bufobj *bo, void *private)
{
	static volatile int bufobj_cleanq;

        bo->bo_domain =
            FUNC2(&bufobj_cleanq, 1) % buf_domains;
        FUNC3(FUNC0(bo), "bufobj interlock");
        bo->bo_private = private;
        FUNC1(&bo->bo_clean.bv_hd);
        FUNC1(&bo->bo_dirty.bv_hd);
}