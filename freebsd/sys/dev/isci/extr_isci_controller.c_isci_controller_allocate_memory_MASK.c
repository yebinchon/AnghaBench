#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct ISCI_REQUEST {int index; int /*<<< orphan*/ * queued_ccb_in_progress; void* release_queued_ccb; int /*<<< orphan*/  queued_ccbs; int /*<<< orphan*/  pending_device_reset_element; scalar_t__ frozen_lun_mask; void* is_resetting; } ;
struct ISCI_REMOTE_DEVICE {int index; int /*<<< orphan*/ * queued_ccb_in_progress; void* release_queued_ccb; int /*<<< orphan*/  queued_ccbs; int /*<<< orphan*/  pending_device_reset_element; scalar_t__ frozen_lun_mask; void* is_resetting; } ;
struct ISCI_MEMORY {int size; int /*<<< orphan*/  physical_address; scalar_t__ virtual_address; } ;
struct ISCI_CONTROLLER {int queue_depth; int /*<<< orphan*/  remote_device_pool; TYPE_2__* domain; int /*<<< orphan*/ ** remote_device; int /*<<< orphan*/ * remote_device_memory; int /*<<< orphan*/  request_pool; int /*<<< orphan*/  buffer_dma_tag; int /*<<< orphan*/  scif_controller_handle; int /*<<< orphan*/  lock; int /*<<< orphan*/  mdl; struct ISCI_MEMORY request_memory; struct ISCI_MEMORY cached_controller_memory; struct ISCI_MEMORY uncached_controller_memory; TYPE_1__* isci; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  bus_addr_t ;
struct TYPE_4__ {struct ISCI_REQUEST* da_remote_device; } ;
struct TYPE_3__ {int /*<<< orphan*/  device; } ;
typedef  scalar_t__ POINTER_UINT ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 void* FALSE ; 
 int /*<<< orphan*/  ISCI_DMA_BOUNDARY ; 
 int /*<<< orphan*/  M_ISCI ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int SCI_MAX_DOMAINS ; 
 int SCI_MAX_REMOTE_DEVICES ; 
 int /*<<< orphan*/  SCI_MAX_SCATTER_GATHER_ELEMENTS ; 
 int SCI_MDE_ATTRIBUTE_CACHEABLE ; 
 int SCI_MDE_ATTRIBUTE_PHYSICALLY_CONTIGUOUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  busdma_lock_mutex ; 
 int FUNC4 (int /*<<< orphan*/ ,struct ISCI_CONTROLLER*,struct ISCI_MEMORY*) ; 
 int FUNC5 () ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct ISCI_REQUEST*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ FUNC9 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ISCI_REQUEST*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ) ; 
 void* FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct ISCI_REQUEST*) ; 
 int FUNC16 () ; 

int FUNC17(struct ISCI_CONTROLLER *controller)
{
	int error;
	device_t device =  controller->isci->device;
	uint32_t max_segment_size = FUNC5();
	uint32_t status = 0;
	struct ISCI_MEMORY *uncached_controller_memory =
	    &controller->uncached_controller_memory;
	struct ISCI_MEMORY *cached_controller_memory =
	    &controller->cached_controller_memory;
	struct ISCI_MEMORY *request_memory =
	    &controller->request_memory;
	POINTER_UINT virtual_address;
	bus_addr_t physical_address;

	controller->mdl = FUNC10(
	    controller->scif_controller_handle);

	uncached_controller_memory->size = FUNC13(
	    controller->mdl, SCI_MDE_ATTRIBUTE_PHYSICALLY_CONTIGUOUS);

	error = FUNC4(device, controller,
	    uncached_controller_memory);

	if (error != 0)
	    return (error);

	FUNC12( controller->mdl,
	    SCI_MDE_ATTRIBUTE_PHYSICALLY_CONTIGUOUS,
	    uncached_controller_memory->virtual_address,
	    uncached_controller_memory->physical_address);

	cached_controller_memory->size = FUNC13(
	    controller->mdl,
	    SCI_MDE_ATTRIBUTE_CACHEABLE | SCI_MDE_ATTRIBUTE_PHYSICALLY_CONTIGUOUS
	);

	error = FUNC4(device, controller,
	    cached_controller_memory);

	if (error != 0)
	    return (error);

	FUNC12(controller->mdl,
	    SCI_MDE_ATTRIBUTE_CACHEABLE | SCI_MDE_ATTRIBUTE_PHYSICALLY_CONTIGUOUS,
	    cached_controller_memory->virtual_address,
	    cached_controller_memory->physical_address);

	request_memory->size =
	    controller->queue_depth * FUNC6();

	error = FUNC4(device, controller, request_memory);

	if (error != 0)
	    return (error);

	/* For STP PIO testing, we want to ensure we can force multiple SGLs
	 *  since this has been a problem area in SCIL.  This tunable parameter
	 *  will allow us to force DMA segments to a smaller size, ensuring
	 *  that even if a physically contiguous buffer is attached to this
	 *  I/O, the DMA subsystem will pass us multiple segments in our DMA
	 *  load callback.
	 */
	FUNC1("hw.isci.max_segment_size", &max_segment_size);

	/* Create DMA tag for our I/O requests.  Then we can create DMA maps based off
	 *  of this tag and store them in each of our ISCI_IO_REQUEST objects.  This
	 *  will enable better performance than creating the DMA maps every time we get
	 *  an I/O.
	 */
	status = FUNC2(FUNC3(device), 0x1,
	    ISCI_DMA_BOUNDARY, BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR,
	    NULL, NULL, FUNC5(),
	    SCI_MAX_SCATTER_GATHER_ELEMENTS, max_segment_size, 0,
	    busdma_lock_mutex, &controller->lock,
	    &controller->buffer_dma_tag);

	FUNC14(controller->request_pool);

	virtual_address = request_memory->virtual_address;
	physical_address = request_memory->physical_address;

	for (int i = 0; i < controller->queue_depth; i++) {
		struct ISCI_REQUEST *request =
		    (struct ISCI_REQUEST *)virtual_address;

		FUNC7(request,
		    controller->scif_controller_handle,
		    controller->buffer_dma_tag, physical_address);

		FUNC15(controller->request_pool, request);

		virtual_address += FUNC8();
		physical_address += FUNC8();
	}

	uint32_t remote_device_size = sizeof(struct ISCI_REMOTE_DEVICE) +
	    FUNC16();

	controller->remote_device_memory = (uint8_t *) FUNC9(
	    remote_device_size * SCI_MAX_REMOTE_DEVICES, M_ISCI,
	    M_NOWAIT | M_ZERO);

	FUNC14(controller->remote_device_pool);

	uint8_t *remote_device_memory_ptr = controller->remote_device_memory;

	for (int i = 0; i < SCI_MAX_REMOTE_DEVICES; i++) {
		struct ISCI_REMOTE_DEVICE *remote_device =
		    (struct ISCI_REMOTE_DEVICE *)remote_device_memory_ptr;

		controller->remote_device[i] = NULL;
		remote_device->index = i;
		remote_device->is_resetting = FALSE;
		remote_device->frozen_lun_mask = 0;
		FUNC11(remote_device,
		    &remote_device->pending_device_reset_element);
		FUNC0(&remote_device->queued_ccbs);
		remote_device->release_queued_ccb = FALSE;
		remote_device->queued_ccb_in_progress = NULL;

		/*
		 * For the first SCI_MAX_DOMAINS device objects, do not put
		 *  them in the pool, rather assign them to each domain.  This
		 *  ensures that any device attached directly to port "i" will
		 *  always get CAM target id "i".
		 */
		if (i < SCI_MAX_DOMAINS)
			controller->domain[i].da_remote_device = remote_device;
		else
			FUNC15(controller->remote_device_pool,
			    remote_device);
		remote_device_memory_ptr += remote_device_size;
	}

	return (0);
}