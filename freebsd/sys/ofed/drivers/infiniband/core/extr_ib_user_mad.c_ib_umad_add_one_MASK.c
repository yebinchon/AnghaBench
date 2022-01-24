#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ib_umad_port {int dummy; } ;
struct ib_umad_device {int /*<<< orphan*/  kobj; TYPE_1__* port; } ;
struct ib_device {int dummy; } ;
struct TYPE_3__ {struct ib_umad_device* umad_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct ib_device*,int /*<<< orphan*/ *,struct ib_umad_device*) ; 
 int /*<<< orphan*/  ib_umad_dev_ktype ; 
 scalar_t__ FUNC1 (struct ib_device*,int,struct ib_umad_device*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct ib_umad_device* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ib_device*,int) ; 
 int FUNC7 (struct ib_device*) ; 
 int FUNC8 (struct ib_device*) ; 
 int /*<<< orphan*/  umad_client ; 

__attribute__((used)) static void FUNC9(struct ib_device *device)
{
	struct ib_umad_device *umad_dev;
	int s, e, i;
	int count = 0;

	s = FUNC8(device);
	e = FUNC7(device);

	umad_dev = FUNC5(sizeof *umad_dev +
			   (e - s + 1) * sizeof (struct ib_umad_port),
			   GFP_KERNEL);
	if (!umad_dev)
		return;

	FUNC3(&umad_dev->kobj, &ib_umad_dev_ktype);

	for (i = s; i <= e; ++i) {
		if (!FUNC6(device, i))
			continue;

		umad_dev->port[i - s].umad_dev = umad_dev;

		if (FUNC1(device, i, umad_dev,
				      &umad_dev->port[i - s]))
			goto err;

		count++;
	}

	if (!count)
		goto free;

	FUNC0(device, &umad_client, umad_dev);

	return;

err:
	while (--i >= s) {
		if (!FUNC6(device, i))
			continue;

		FUNC2(&umad_dev->port[i - s]);
	}
free:
	FUNC4(&umad_dev->kobj);
}