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
struct cudbg_init {TYPE_1__* adap; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int FW_OK ; 

__attribute__((used)) static int FUNC0(struct cudbg_init *pdbg_init)
{

	return (pdbg_init->adap->flags & FW_OK);
}