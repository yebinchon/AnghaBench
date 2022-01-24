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
struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct label {int dummy; } ;
struct image_params {int dummy; } ;

/* Variables and functions */
 int MBI_EXEC ; 
 int MBI_READ ; 
 int FUNC0 (struct ucred*,struct vnode*,int) ; 

int
FUNC1(struct ucred *cred, struct vnode *vp,
    struct label *vplabel, struct image_params *imgp,
    struct label *execlabel)
{

	return (FUNC0(cred, vp, MBI_READ|MBI_EXEC));
}