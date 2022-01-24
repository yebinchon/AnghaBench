#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sockopt {size_t sopt_valsize; scalar_t__ sopt_dir; TYPE_1__* sopt_td; } ;
struct sadb_x_policy {int dummy; } ;
struct inpcb {int /*<<< orphan*/ * inp_sp; } ;
struct TYPE_2__ {int /*<<< orphan*/ * td_ucred; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOBUFS ; 
 int ENOPROTOOPT ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 size_t PAGE_SIZE ; 
 scalar_t__ SOPT_SET ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct inpcb*,void*,size_t*) ; 
 int FUNC2 (struct inpcb*,int /*<<< orphan*/ *,void*,size_t) ; 
 void* FUNC3 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sockopt*,void*,size_t,size_t) ; 
 int FUNC5 (struct sockopt*,void*,size_t) ; 

__attribute__((used)) static int
FUNC6(struct inpcb *inp, struct sockopt *sopt)
{
	void *optdata;
	size_t optlen;
	int error;

	if (inp->inp_sp == NULL)
		return (ENOPROTOOPT);

	/* Limit maximum request size to PAGE_SIZE */
	optlen = sopt->sopt_valsize;
	if (optlen < sizeof(struct sadb_x_policy) || optlen > PAGE_SIZE)
		return (EINVAL);

	optdata = FUNC3(optlen, M_TEMP, sopt->sopt_td ? M_WAITOK: M_NOWAIT);
	if (optdata == NULL)
		return (ENOBUFS);
	/*
	 * We need a hint from the user, what policy is requested - input
	 * or output? User should specify it in the buffer, even for
	 * setsockopt().
	 */
	error = FUNC4(sopt, optdata, optlen, optlen);
	if (error == 0) {
		if (sopt->sopt_dir == SOPT_SET)
			error = FUNC2(inp,
			    sopt->sopt_td ? sopt->sopt_td->td_ucred: NULL,
			    optdata, optlen);
		else {
			error = FUNC1(inp, optdata, &optlen);
			if (error == 0)
				error = FUNC5(sopt, optdata, optlen);
		}
	}
	FUNC0(optdata, M_TEMP);
	return (error);
}