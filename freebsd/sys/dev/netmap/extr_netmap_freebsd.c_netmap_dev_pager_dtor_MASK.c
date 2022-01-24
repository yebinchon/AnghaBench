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
struct netmap_vm_handle_t {struct netmap_priv_d* priv; struct cdev* dev; } ;
struct netmap_priv_d {int dummy; } ;
struct cdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC0 (struct cdev*) ; 
 int /*<<< orphan*/  FUNC1 (struct netmap_vm_handle_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct netmap_priv_d*) ; 
 scalar_t__ netmap_verbose ; 
 int /*<<< orphan*/  FUNC3 (char*,void*) ; 

__attribute__((used)) static void
FUNC4(void *handle)
{
	struct netmap_vm_handle_t *vmh = handle;
	struct cdev *dev = vmh->dev;
	struct netmap_priv_d *priv = vmh->priv;

	if (netmap_verbose)
		FUNC3("handle %p", handle);
	FUNC2(priv);
	FUNC1(vmh, M_DEVBUF);
	FUNC0(dev);
}