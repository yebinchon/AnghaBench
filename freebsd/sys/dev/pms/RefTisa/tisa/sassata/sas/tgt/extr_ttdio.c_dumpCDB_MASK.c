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
typedef  int /*<<< orphan*/  bit8 ;
typedef  int bit32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 

void
FUNC1(bit8 *cdb)
{
    bit32 i;
    for(i=0;i<10;i++)
    {
        FUNC0(("cdb[%d] 0x%x\n", i, cdb[i]));
    }
    return;
}