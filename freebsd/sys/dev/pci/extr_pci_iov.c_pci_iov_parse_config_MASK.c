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
struct pcicfg_iov {int /*<<< orphan*/  iov_schema; } ;
struct pci_iov_arg {int /*<<< orphan*/  len; int /*<<< orphan*/  config; } ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int EINVAL ; 
 int EMSGSIZE ; 
 int /*<<< orphan*/  M_SRIOV ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  NV_FLAG_IGNORE_CASE ; 
 int FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pci_iov_max_config ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(struct pcicfg_iov *iov, struct pci_iov_arg *arg,
    nvlist_t **ret)
{
	void *packed_config;
	nvlist_t *config;
	int error;

	config = NULL;
	packed_config = NULL;

	if (arg->len > pci_iov_max_config) {
		error = EMSGSIZE;
		goto out;
	}

	packed_config = FUNC2(arg->len, M_SRIOV, M_WAITOK);

	error = FUNC0(arg->config, packed_config, arg->len);
	if (error != 0)
		goto out;

	config = FUNC5(packed_config, arg->len, NV_FLAG_IGNORE_CASE);
	if (config == NULL) {
		error = EINVAL;
		goto out;
	}

	error = FUNC6(iov->iov_schema, config);
	if (error != 0)
		goto out;

	error = FUNC4(config);
	if (error != 0)
		goto out;

	*ret = config;
	config = NULL;

out:
	FUNC3(config);
	FUNC1(packed_config, M_SRIOV);
	return (error);
}