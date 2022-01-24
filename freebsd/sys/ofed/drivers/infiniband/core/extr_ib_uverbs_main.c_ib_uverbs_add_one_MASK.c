#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_10__ {int /*<<< orphan*/  dev; TYPE_1__ kobj; int /*<<< orphan*/ * ops; int /*<<< orphan*/  owner; } ;
struct ib_uverbs_device {int devnum; int /*<<< orphan*/  kobj; int /*<<< orphan*/  comp; int /*<<< orphan*/  refcount; TYPE_4__ cdev; TYPE_2__* dev; int /*<<< orphan*/  num_comp_vectors; int /*<<< orphan*/  ib_dev; int /*<<< orphan*/  uverbs_events_file_list; int /*<<< orphan*/  uverbs_file_list; int /*<<< orphan*/  lists_mutex; int /*<<< orphan*/  xrcd_tree_mutex; int /*<<< orphan*/  xrcd_tree; int /*<<< orphan*/  disassociate_srcu; } ;
struct ib_device {int /*<<< orphan*/  dma_device; scalar_t__ mmap; int /*<<< orphan*/  num_comp_vectors; int /*<<< orphan*/  alloc_ucontext; } ;
typedef  scalar_t__ dev_t ;
struct TYPE_9__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ IB_UVERBS_BASE_DEV ; 
 int IB_UVERBS_MAX_DEVICES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  RB_ROOT ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (TYPE_4__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dev_attr_abi_version ; 
 int /*<<< orphan*/  dev_attr_ibdev ; 
 int /*<<< orphan*/  dev_map ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ib_uverbs_device*,char*,int) ; 
 scalar_t__ FUNC9 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  device_group ; 
 int FUNC11 (int /*<<< orphan*/ ,int) ; 
 int FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct ib_device*,int /*<<< orphan*/ *,struct ib_uverbs_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct ib_uverbs_device*) ; 
 int /*<<< orphan*/  ib_uverbs_dev_ktype ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct ib_uverbs_device*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,char*,int) ; 
 struct ib_uverbs_device* FUNC21 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  map_lock ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 scalar_t__ overflow_maj ; 
 int /*<<< orphan*/  overflow_map ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,struct ib_device*) ; 
 int /*<<< orphan*/  FUNC24 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uverbs_class ; 
 int /*<<< orphan*/  uverbs_client ; 
 int /*<<< orphan*/  uverbs_fops ; 
 int /*<<< orphan*/  uverbs_mmap_fops ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC29(struct ib_device *device)
{
	int devnum;
	dev_t base;
	struct ib_uverbs_device *uverbs_dev;
	int ret;

	if (!device->alloc_ucontext)
		return;

	uverbs_dev = FUNC21(sizeof *uverbs_dev, GFP_KERNEL);
	if (!uverbs_dev)
		return;

	ret = FUNC16(&uverbs_dev->disassociate_srcu);
	if (ret) {
		FUNC17(uverbs_dev);
		return;
	}

	FUNC3(&uverbs_dev->refcount, 1);
	FUNC15(&uverbs_dev->comp);
	uverbs_dev->xrcd_tree = RB_ROOT;
	FUNC22(&uverbs_dev->xrcd_tree_mutex);
	FUNC18(&uverbs_dev->kobj, &ib_uverbs_dev_ktype);
	FUNC22(&uverbs_dev->lists_mutex);
	FUNC0(&uverbs_dev->uverbs_file_list);
	FUNC0(&uverbs_dev->uverbs_events_file_list);

	FUNC25(&map_lock);
	devnum = FUNC11(dev_map, IB_UVERBS_MAX_DEVICES);
	if (devnum >= IB_UVERBS_MAX_DEVICES) {
		FUNC26(&map_lock);
		devnum = FUNC12();
		if (devnum < 0)
			goto err;

		FUNC25(&map_lock);
		uverbs_dev->devnum = devnum + IB_UVERBS_MAX_DEVICES;
		base = devnum + overflow_maj;
		FUNC24(devnum, overflow_map);
	} else {
		uverbs_dev->devnum = devnum;
		base = devnum + IB_UVERBS_BASE_DEV;
		FUNC24(devnum, dev_map);
	}
	FUNC26(&map_lock);

	FUNC23(uverbs_dev->ib_dev, device);
	uverbs_dev->num_comp_vectors = device->num_comp_vectors;

	FUNC6(&uverbs_dev->cdev, NULL);
	uverbs_dev->cdev.owner = THIS_MODULE;
	uverbs_dev->cdev.ops = device->mmap ? &uverbs_mmap_fops : &uverbs_fops;
	uverbs_dev->cdev.kobj.parent = &uverbs_dev->kobj;
	FUNC20(&uverbs_dev->cdev.kobj, "uverbs%d", uverbs_dev->devnum);
	if (FUNC4(&uverbs_dev->cdev, base, 1))
		goto err_cdev;

	uverbs_dev->dev = FUNC8(uverbs_class, device->dma_device,
					uverbs_dev->cdev.dev, uverbs_dev,
					"uverbs%d", uverbs_dev->devnum);
	if (FUNC1(uverbs_dev->dev))
		goto err_cdev;

	if (FUNC9(uverbs_dev->dev, &dev_attr_ibdev))
		goto err_class;
	if (FUNC9(uverbs_dev->dev, &dev_attr_abi_version))
		goto err_class;
	if (FUNC27(&uverbs_dev->dev->kobj, &device_group))
		goto err_class;

	FUNC13(device, &uverbs_client, uverbs_dev);

	return;

err_class:
	FUNC10(uverbs_class, uverbs_dev->cdev.dev);

err_cdev:
	FUNC5(&uverbs_dev->cdev);
	if (uverbs_dev->devnum < IB_UVERBS_MAX_DEVICES)
		FUNC7(devnum, dev_map);
	else
		FUNC7(devnum, overflow_map);

err:
	if (FUNC2(&uverbs_dev->refcount))
		FUNC14(uverbs_dev);
	FUNC28(&uverbs_dev->comp);
	FUNC19(&uverbs_dev->kobj);
	return;
}