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
struct vxlan_socket {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vxlan_socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct vxlan_socket*) ; 
 int /*<<< orphan*/  FUNC4 (struct vxlan_socket*) ; 
 int /*<<< orphan*/  vxlso_entry ; 

__attribute__((used)) static void
FUNC5(struct vxlan_socket *vso)
{
	int destroy;

	FUNC1();
	destroy = FUNC3(vso);
	if (destroy != 0)
		FUNC0(vso, vxlso_entry);
	FUNC2();

	if (destroy != 0)
		FUNC4(vso);
}