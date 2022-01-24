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
struct kinfo_proc {int dummy; } ;

/* Variables and functions */
 int KERN_PROC_INC_THREAD ; 
 int KERN_PROC_PID ; 
 void* FUNC0 (void*,int,int,size_t*) ; 

__attribute__((used)) static void *
FUNC1(void *arg, size_t *sizep)
{

	return (FUNC0(arg, KERN_PROC_PID | KERN_PROC_INC_THREAD,
	    sizeof(struct kinfo_proc), sizep));
}