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
typedef  scalar_t__ vm_size_t ;
typedef  scalar_t__ vm_ooffset_t ;
typedef  int /*<<< orphan*/ * vm_object_t ;
struct netmap_vm_handle_t {struct netmap_priv_d* priv; struct cdev* dev; } ;
struct netmap_priv_d {int /*<<< orphan*/  np_refs; int /*<<< orphan*/ * np_nifp; } ;
struct cdev {int dummy; } ;
typedef  int /*<<< orphan*/  intmax_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  OBJT_DEVICE ; 
 int /*<<< orphan*/ * FUNC2 (struct netmap_vm_handle_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC3 (void**) ; 
 int /*<<< orphan*/  FUNC4 (struct netmap_vm_handle_t*,int /*<<< orphan*/ ) ; 
 struct netmap_vm_handle_t* FUNC5 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  netmap_cdev_pager_ops ; 
 scalar_t__ netmap_verbose ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,struct cdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int) ; 

__attribute__((used)) static int
FUNC8(struct cdev *cdev, vm_ooffset_t *foff,
	vm_size_t objsize,  vm_object_t *objp, int prot)
{
	int error;
	struct netmap_vm_handle_t *vmh;
	struct netmap_priv_d *priv;
	vm_object_t obj;

	if (netmap_verbose)
		FUNC7("cdev %p foff %jd size %jd objp %p prot %d", cdev,
		    (intmax_t )*foff, (intmax_t )objsize, objp, prot);

	vmh = FUNC5(sizeof(struct netmap_vm_handle_t), M_DEVBUF,
			      M_NOWAIT | M_ZERO);
	if (vmh == NULL)
		return ENOMEM;
	vmh->dev = cdev;

	FUNC0();
	error = FUNC3((void**)&priv);
	if (error)
		goto err_unlock;
	if (priv->np_nifp == NULL) {
		error = EINVAL;
		goto err_unlock;
	}
	vmh->priv = priv;
	priv->np_refs++;
	FUNC1();

	obj = FUNC2(vmh, OBJT_DEVICE,
		&netmap_cdev_pager_ops, objsize, prot,
		*foff, NULL);
	if (obj == NULL) {
		FUNC6("cdev_pager_allocate failed");
		error = EINVAL;
		goto err_deref;
	}

	*objp = obj;
	return 0;

err_deref:
	FUNC0();
	priv->np_refs--;
err_unlock:
	FUNC1();
// err:
	FUNC4(vmh, M_DEVBUF);
	return error;
}