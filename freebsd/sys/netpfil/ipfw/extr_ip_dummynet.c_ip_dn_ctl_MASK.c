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
struct sockopt {scalar_t__ sopt_dir; int sopt_name; int sopt_valsize; TYPE_1__* sopt_td; } ;
struct dn_id {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  td_ucred; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int EINVAL ; 
#define  IP_DUMMYNET3 132 
#define  IP_DUMMYNET_CONFIGURE 131 
#define  IP_DUMMYNET_DEL 130 
#define  IP_DUMMYNET_FLUSH 129 
#define  IP_DUMMYNET_GET 128 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  PRIV_NETINET_DUMMYNET ; 
 scalar_t__ SOPT_GET ; 
 scalar_t__ SOPT_SET ; 
 int FUNC1 (void*,int) ; 
 int FUNC2 (struct sockopt*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sockopt*) ; 
 void* FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct sockopt*,void*,int,int) ; 

__attribute__((used)) static int
FUNC9(struct sockopt *sopt)
{
	void *p = NULL;
	int error, l;

	error = FUNC6(sopt->sopt_td, PRIV_NETINET_DUMMYNET);
	if (error)
		return (error);

	/* Disallow sets in really-really secure mode. */
	if (sopt->sopt_dir == SOPT_SET) {
		error =  FUNC7(sopt->sopt_td->td_ucred, 3);
		if (error)
			return (error);
	}

	switch (sopt->sopt_name) {
	default :
		FUNC0("dummynet: unknown option %d", sopt->sopt_name);
		error = EINVAL;
		break;

	case IP_DUMMYNET_FLUSH:
	case IP_DUMMYNET_CONFIGURE:
	case IP_DUMMYNET_DEL:	/* remove a pipe or queue */
	case IP_DUMMYNET_GET:
		FUNC0("dummynet: compat option %d", sopt->sopt_name);
		error = FUNC4(sopt);
		break;

	case IP_DUMMYNET3 :
		if (sopt->sopt_dir == SOPT_GET) {
			error = FUNC2(sopt, NULL);
			break;
		}
		l = sopt->sopt_valsize;
		if (l < sizeof(struct dn_id) || l > 12000) {
			FUNC0("argument len %d invalid", l);
			break;
		}
		p = FUNC5(l, M_TEMP, M_WAITOK); // XXX can it fail ?
		error = FUNC8(sopt, p, l, l);
		if (error)
			break ;
		error = FUNC1(p, l);
		break;
	}

	if (p != NULL)
		FUNC3(p, M_TEMP);

	return error ;
}