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
struct vop_kqfilter_args {int dummy; } ;
struct TYPE_2__ {int (* vop_kqfilter ) (struct vop_kqfilter_args*) ;} ;

/* Variables and functions */
 TYPE_1__ fifo_specops ; 
 int FUNC0 (struct vop_kqfilter_args*) ; 
 int FUNC1 (struct vop_kqfilter_args*) ; 

__attribute__((used)) static int
FUNC2(struct vop_kqfilter_args *ap)
{
	int error;

	error = fifo_specops.vop_kqfilter(ap);
	if (error)
		error = FUNC1(ap);
	return (error);
}