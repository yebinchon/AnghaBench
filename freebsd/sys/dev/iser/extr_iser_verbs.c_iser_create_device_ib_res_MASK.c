#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct iser_device {int comps_used; struct iser_comp* comps; TYPE_2__* pd; int /*<<< orphan*/  event_handler; struct ib_device* ib_device; TYPE_2__* mr; } ;
struct iser_comp {TYPE_2__* cq; scalar_t__ tq; int /*<<< orphan*/  task; struct iser_device* device; } ;
struct TYPE_8__ {int device_cap_flags; int /*<<< orphan*/  max_cqe; } ;
struct ib_device {int /*<<< orphan*/  num_comp_vectors; int /*<<< orphan*/  name; TYPE_1__ attrs; } ;
struct ib_cq_init_attr {int cqe; int comp_vector; } ;
struct TYPE_9__ {struct TYPE_9__* __internal_mr; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_CQ_NEXT_COMP ; 
 int IB_DEVICE_MEM_MGT_EXTENSIONS ; 
 int /*<<< orphan*/  IB_PD_UNSAFE_GLOBAL_RKEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ib_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  ISER_MAX_CQ_LEN ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  M_ISER_VERBS ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  PI_NET ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iser_comp*) ; 
 int /*<<< orphan*/  FUNC5 (struct iser_comp*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (struct ib_device*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC7 (struct ib_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,struct ib_cq_init_attr*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iser_cq_callback ; 
 int /*<<< orphan*/  iser_cq_event_callback ; 
 int /*<<< orphan*/  iser_cq_tasklet_fn ; 
 int /*<<< orphan*/  iser_event_handler ; 
 struct iser_comp* FUNC12 (int,int /*<<< orphan*/ ,int) ; 
 void* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mp_ncpus ; 
 scalar_t__ FUNC14 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__*,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  taskqueue_thread_enqueue ; 

__attribute__((used)) static int
FUNC17(struct iser_device *device)
{
	struct ib_device *ib_dev = device->ib_device;
	int i, max_cqe;

	if (!(ib_dev->attrs.device_cap_flags & IB_DEVICE_MEM_MGT_EXTENSIONS)) {
		FUNC2("device %s doesn't support Fastreg, "
			 "can't register memory", device->ib_device->name);
		return (1);
	}

	device->comps_used = FUNC13(mp_ncpus, device->ib_device->num_comp_vectors);

	device->comps = FUNC12(device->comps_used * sizeof(*device->comps),
		M_ISER_VERBS, M_WAITOK | M_ZERO);
	if (!device->comps)
		goto comps_err;

	max_cqe = FUNC13(ISER_MAX_CQ_LEN, ib_dev->attrs.max_cqe);

	FUNC1("using %d CQs, device %s supports %d vectors max_cqe %d",
		 device->comps_used, device->ib_device->name,
		 device->ib_device->num_comp_vectors, max_cqe);

	device->pd = FUNC6(device->ib_device, IB_PD_UNSAFE_GLOBAL_RKEY);
	if (FUNC3(device->pd))
		goto pd_err;

	for (i = 0; i < device->comps_used; i++) {
		struct iser_comp *comp = &device->comps[i];
		struct ib_cq_init_attr cq_attr = {
			.cqe		= max_cqe,
			.comp_vector	= i,
		};

		comp->device = device;
		comp->cq = FUNC7(device->ib_device,
					iser_cq_callback,
					iser_cq_event_callback,
					(void *)comp,
					&cq_attr);
		if (FUNC3(comp->cq)) {
			comp->cq = NULL;
			goto cq_err;
		}

		if (FUNC11(comp->cq, IB_CQ_NEXT_COMP))
			goto cq_err;

		FUNC4(&comp->task, 0, iser_cq_tasklet_fn, comp);
		comp->tq = FUNC14("iser_taskq", M_NOWAIT,
				taskqueue_thread_enqueue, &comp->tq);
		if (!comp->tq)
			goto tq_err;
		FUNC16(&comp->tq, 1, PI_NET, "iser taskq");
	}

	device->mr = device->pd->__internal_mr;
	if (FUNC3(device->mr))
		goto tq_err;

	FUNC0(&device->event_handler, device->ib_device,
				iser_event_handler);
	if (FUNC10(&device->event_handler))
		goto tq_err;

	return (0);

tq_err:
	for (i = 0; i < device->comps_used; i++) {
		struct iser_comp *comp = &device->comps[i];
		if (comp->tq)
			FUNC15(comp->tq);
	}
cq_err:
	for (i = 0; i < device->comps_used; i++) {
		struct iser_comp *comp = &device->comps[i];
		if (comp->cq)
			FUNC9(comp->cq);
	}
	FUNC8(device->pd);
pd_err:
	FUNC5(device->comps, M_ISER_VERBS);
comps_err:
	FUNC2("failed to allocate an IB resource");
	return (1);
}