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
struct iso_node {int /*<<< orphan*/  i_mnt; } ;
typedef  int /*<<< orphan*/  daddr_t ;

/* Variables and functions */
 struct iso_node* FUNC0 (struct vnode*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct iso_node*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct vnode *vp, daddr_t lbn)
{
	struct iso_node *ip;

	ip = FUNC0(vp);
	return (FUNC1(ip->i_mnt, ip, lbn));
}