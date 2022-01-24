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
struct nvdimm_dev {int dummy; } ;
typedef  scalar_t__ nfit_handle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_TEMP ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*) ; 
 struct nvdimm_dev* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nvdimm_devclass ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

struct nvdimm_dev *
FUNC4(nfit_handle_t nv_handle)
{
	struct nvdimm_dev *res;
	device_t *dimms;
	int i, error, num_dimms;

	res = NULL;
	error = FUNC0(nvdimm_devclass, &dimms, &num_dimms);
	if (error != 0)
		return (NULL);
	for (i = 0; i < num_dimms; i++) {
		if (FUNC3(dimms[i]) == nv_handle) {
			res = FUNC1(dimms[i]);
			break;
		}
	}
	FUNC2(dimms, M_TEMP);
	return (res);
}