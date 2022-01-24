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
struct nfsdevice {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct nfsdevice*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfsdev_list ; 
 int /*<<< orphan*/  nfsrv_devidhead ; 
 int /*<<< orphan*/  FUNC1 (struct nfsdevice*) ; 

__attribute__((used)) static void
FUNC2(struct nfsdevice *ds)
{

	FUNC0(&nfsrv_devidhead, ds, nfsdev_list);
	FUNC1(ds);
}