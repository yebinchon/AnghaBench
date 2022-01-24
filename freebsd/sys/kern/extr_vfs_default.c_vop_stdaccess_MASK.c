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
struct vop_access_args {int a_accmode; int /*<<< orphan*/  a_td; int /*<<< orphan*/  a_cred; int /*<<< orphan*/  a_vp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int VADMIN ; 
 int VAPPEND ; 
 int VEXEC ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int VREAD ; 
 int VWRITE ; 

int
FUNC2(struct vop_access_args *ap)
{

	FUNC0((ap->a_accmode & ~(VEXEC | VWRITE | VREAD | VADMIN |
	    VAPPEND)) == 0, ("invalid bit in accmode"));

	return (FUNC1(ap->a_vp, ap->a_accmode, ap->a_cred, ap->a_td));
}