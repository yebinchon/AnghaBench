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
struct netmap_mem_d {int dummy; } ;
struct netmap_adapter {int na_flags; scalar_t__ na_next_pipe; scalar_t__ active_fds; struct netmap_mem_d* nm_mem; struct netmap_mem_d* nm_mem_prev; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 struct netmap_adapter* FUNC0 (struct ifnet*) ; 
 int NAF_FORCE_NATIVE ; 
 int NAF_MEM_OWNER ; 
 int NETMAP_ADMODE_BEST ; 
 int NETMAP_ADMODE_GENERIC ; 
 int NETMAP_ADMODE_LAST ; 
 int NETMAP_ADMODE_NATIVE ; 
 scalar_t__ FUNC1 (struct netmap_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*) ; 
 scalar_t__ FUNC3 (struct ifnet*) ; 
 int FUNC4 (struct ifnet*) ; 
 int netmap_admode ; 
 struct netmap_mem_d* FUNC5 (struct netmap_mem_d*) ; 

int
FUNC6(struct ifnet *ifp, struct netmap_mem_d *nmd, struct netmap_adapter **na)
{
	/* generic support */
	int i = netmap_admode;	/* Take a snapshot. */
	struct netmap_adapter *prev_na;
	int error = 0;

	*na = NULL; /* default */

	/* reset in case of invalid value */
	if (i < NETMAP_ADMODE_BEST || i >= NETMAP_ADMODE_LAST)
		i = netmap_admode = NETMAP_ADMODE_BEST;

	if (FUNC3(ifp)) {
		prev_na = FUNC0(ifp);
		/* If an adapter already exists, return it if
		 * there are active file descriptors or if
		 * netmap is not forced to use generic
		 * adapters.
		 */
		if (FUNC1(prev_na)
			|| i != NETMAP_ADMODE_GENERIC
			|| prev_na->na_flags & NAF_FORCE_NATIVE
#ifdef WITH_PIPES
			/* ugly, but we cannot allow an adapter switch
			 * if some pipe is referring to this one
			 */
			|| prev_na->na_next_pipe > 0
#endif
		) {
			*na = prev_na;
			goto assign_mem;
		}
	}

	/* If there isn't native support and netmap is not allowed
	 * to use generic adapters, we cannot satisfy the request.
	 */
	if (!FUNC2(ifp) && i == NETMAP_ADMODE_NATIVE)
		return EOPNOTSUPP;

	/* Otherwise, create a generic adapter and return it,
	 * saving the previously used netmap adapter, if any.
	 *
	 * Note that here 'prev_na', if not NULL, MUST be a
	 * native adapter, and CANNOT be a generic one. This is
	 * true because generic adapters are created on demand, and
	 * destroyed when not used anymore. Therefore, if the adapter
	 * currently attached to an interface 'ifp' is generic, it
	 * must be that
	 * (NA(ifp)->active_fds > 0 || NETMAP_OWNED_BY_KERN(NA(ifp))).
	 * Consequently, if NA(ifp) is generic, we will enter one of
	 * the branches above. This ensures that we never override
	 * a generic adapter with another generic adapter.
	 */
	error = FUNC4(ifp);
	if (error)
		return error;

	*na = FUNC0(ifp);

assign_mem:
	if (nmd != NULL && !((*na)->na_flags & NAF_MEM_OWNER) &&
	    (*na)->active_fds == 0 && ((*na)->nm_mem != nmd)) {
		(*na)->nm_mem_prev = (*na)->nm_mem;
		(*na)->nm_mem = FUNC5(nmd);
	}

	return 0;
}