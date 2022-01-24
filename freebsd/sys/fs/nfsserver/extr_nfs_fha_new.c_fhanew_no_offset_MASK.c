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
typedef  scalar_t__ rpcproc_t ;

/* Variables and functions */
 scalar_t__ NFSPROC_FSINFO ; 
 scalar_t__ NFSPROC_FSSTAT ; 
 scalar_t__ NFSPROC_NOOP ; 
 scalar_t__ NFSPROC_NULL ; 
 scalar_t__ NFSPROC_PATHCONF ; 

int
FUNC0(rpcproc_t procnum)
{
	if (procnum == NFSPROC_FSSTAT ||
	    procnum == NFSPROC_FSINFO ||
	    procnum == NFSPROC_PATHCONF ||
	    procnum == NFSPROC_NOOP ||
	    procnum == NFSPROC_NULL)
		return (1);
	else
		return (0);
}