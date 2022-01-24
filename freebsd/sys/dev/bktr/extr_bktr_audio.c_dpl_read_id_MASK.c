#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* bktr_ptr_t ;
struct TYPE_4__ {int /*<<< orphan*/  dpl_version_string; int /*<<< orphan*/  dpl_addr; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,int,int) ; 

void FUNC2( bktr_ptr_t bktr ){
    int rev1=0, rev2=0;
    rev1 = FUNC0(bktr, bktr->dpl_addr, 0x12, 0x001e);
    rev2 = FUNC0(bktr, bktr->dpl_addr, 0x12, 0x001f);

    FUNC1(bktr->dpl_version_string, "34%02d%c-%c%d",
      ((rev2>>8)&0xff)-1, (rev1&0xff)+'@', ((rev1>>8)&0xff)+'@', rev2&0x1f);
}