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
struct nmreq_register {scalar_t__ nr_mode; scalar_t__ nr_host_rx_rings; scalar_t__ nr_host_tx_rings; scalar_t__ nr_mem_id; } ;
struct nmreq_header {scalar_t__ nr_reqtype; int /*<<< orphan*/  nr_name; scalar_t__ nr_body; } ;
struct netmap_mem_d {int dummy; } ;
struct netmap_adapter {int na_flags; scalar_t__ active_fds; scalar_t__ num_host_rx_rings; scalar_t__ num_host_tx_rings; int /*<<< orphan*/  name; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int NAF_HOST_RINGS ; 
 scalar_t__ NETMAP_REQ_REGISTER ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ NR_REG_PIPE_MASTER ; 
 scalar_t__ NR_REG_PIPE_SLAVE ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*) ; 
 struct ifnet* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct netmap_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct netmap_adapter*) ; 
 int FUNC5 (struct ifnet*,struct netmap_mem_d*,struct netmap_adapter**) ; 
 int FUNC6 (struct nmreq_header*,struct netmap_adapter**,struct netmap_mem_d*,int) ; 
 int FUNC7 (struct nmreq_header*,struct netmap_adapter**,struct netmap_mem_d*,int) ; 
 int FUNC8 (struct nmreq_header*,struct netmap_adapter**,struct netmap_mem_d*,int) ; 
 int FUNC9 (struct nmreq_header*,struct netmap_adapter**,struct netmap_mem_d*,int) ; 
 struct netmap_mem_d* FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct netmap_mem_d*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

int
FUNC14(struct nmreq_header *hdr,
	      struct netmap_adapter **na, struct ifnet **ifp,
	      struct netmap_mem_d *nmd, int create)
{
	struct nmreq_register *req = (struct nmreq_register *)(uintptr_t)hdr->nr_body;
	int error = 0;
	struct netmap_adapter *ret = NULL;
	int nmd_ref = 0;

	*na = NULL;     /* default return value */
	*ifp = NULL;

	if (hdr->nr_reqtype != NETMAP_REQ_REGISTER) {
		return EINVAL;
	}

	if (req->nr_mode == NR_REG_PIPE_MASTER ||
			req->nr_mode == NR_REG_PIPE_SLAVE) {
		/* Do not accept deprecated pipe modes. */
		FUNC13("Deprecated pipe nr_mode, use xx{yy or xx}yy syntax");
		return EINVAL;
	}

	FUNC0();

	/* if the request contain a memid, try to find the
	 * corresponding memory region
	 */
	if (nmd == NULL && req->nr_mem_id) {
		nmd = FUNC10(req->nr_mem_id);
		if (nmd == NULL)
			return EINVAL;
		/* keep the rereference */
		nmd_ref = 1;
	}

	/* We cascade through all possible types of netmap adapter.
	 * All netmap_get_*_na() functions return an error and an na,
	 * with the following combinations:
	 *
	 * error    na
	 *   0	   NULL		type doesn't match
	 *  !0	   NULL		type matches, but na creation/lookup failed
	 *   0	  !NULL		type matches and na created/found
	 *  !0    !NULL		impossible
	 */
	error = FUNC7(hdr, na, nmd, create);
	if (error || *na != NULL)
		goto out;

	/* try to see if this is a monitor port */
	error = FUNC6(hdr, na, nmd, create);
	if (error || *na != NULL)
		goto out;

	/* try to see if this is a pipe port */
	error = FUNC8(hdr, na, nmd, create);
	if (error || *na != NULL)
		goto out;

	/* try to see if this is a bridge port */
	error = FUNC9(hdr, na, nmd, create);
	if (error)
		goto out;

	if (*na != NULL) /* valid match in netmap_get_bdg_na() */
		goto out;

	/*
	 * This must be a hardware na, lookup the name in the system.
	 * Note that by hardware we actually mean "it shows up in ifconfig".
	 * This may still be a tap, a veth/epair, or even a
	 * persistent VALE port.
	 */
	*ifp = FUNC2(hdr->nr_name);
	if (*ifp == NULL) {
		error = ENXIO;
		goto out;
	}

	error = FUNC5(*ifp, nmd, &ret);
	if (error)
		goto out;

	*na = ret;
	FUNC3(ret);

	/*
	 * if the adapter supports the host rings and it is not alread open,
	 * try to set the number of host rings as requested by the user
	 */
	if (((*na)->na_flags & NAF_HOST_RINGS) && (*na)->active_fds == 0) {
		if (req->nr_host_tx_rings)
			(*na)->num_host_tx_rings = req->nr_host_tx_rings;
		if (req->nr_host_rx_rings)
			(*na)->num_host_rx_rings = req->nr_host_rx_rings;
	}
	FUNC12("%s: host tx %d rx %u", (*na)->name, (*na)->num_host_tx_rings,
			(*na)->num_host_rx_rings);

out:
	if (error) {
		if (ret)
			FUNC4(ret);
		if (*ifp) {
			FUNC1(*ifp);
			*ifp = NULL;
		}
	}
	if (nmd_ref)
		FUNC11(nmd);

	return error;
}