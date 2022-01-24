#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct thread {int /*<<< orphan*/  td_cpuset; } ;
struct proc {int dummy; } ;
struct domainset {int ds_policy; int /*<<< orphan*/  ds_mask; scalar_t__ ds_prefer; } ;
struct cpuset {int dummy; } ;
typedef  int id_t ;
struct TYPE_10__ {int /*<<< orphan*/  __bits; } ;
typedef  TYPE_1__ domainset_t ;
typedef  int /*<<< orphan*/  domain ;
typedef  scalar_t__ cpuwhich_t ;
typedef  int cpulevel_t ;

/* Variables and functions */
#define  CPU_LEVEL_CPUSET 138 
#define  CPU_LEVEL_ROOT 137 
#define  CPU_LEVEL_WHICH 136 
#define  CPU_WHICH_CPUSET 135 
#define  CPU_WHICH_DOMAIN 134 
#define  CPU_WHICH_INTRHANDLER 133 
#define  CPU_WHICH_IRQ 132 
#define  CPU_WHICH_ITHREAD 131 
#define  CPU_WHICH_JAIL 130 
#define  CPU_WHICH_PID 129 
#define  CPU_WHICH_TID 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 size_t DOMAINSET_MAXSIZE ; 
 int DOMAINSET_POLICY_INVALID ; 
 int DOMAINSET_POLICY_MAX ; 
 int DOMAINSET_POLICY_PREFER ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int ECAPMODE ; 
 int EINVAL ; 
 int ERANGE ; 
 scalar_t__ FUNC4 (struct thread*) ; 
 int /*<<< orphan*/  M_TEMP ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 size_t NBBY ; 
 int /*<<< orphan*/  FUNC5 (struct proc*) ; 
 int FUNC6 (int,int /*<<< orphan*/ *,struct domainset*) ; 
 TYPE_1__ all_domains ; 
 int FUNC7 (TYPE_1__ const*,TYPE_1__*,size_t) ; 
 int FUNC8 (struct cpuset*,struct domainset*) ; 
 struct cpuset* FUNC9 (int /*<<< orphan*/ ) ; 
 struct cpuset* FUNC10 (struct cpuset*) ; 
 struct cpuset* FUNC11 (struct cpuset*) ; 
 int /*<<< orphan*/  FUNC12 (struct cpuset*) ; 
 int FUNC13 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct domainset*) ; 
 int FUNC14 (scalar_t__,int,struct proc**,struct thread**,struct cpuset**) ; 
 int /*<<< orphan*/  domainset2 ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,struct domainset*) ; 
 scalar_t__ FUNC16 (struct domainset*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC18 (size_t,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (struct domainset*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (struct thread*) ; 
 int /*<<< orphan*/  FUNC21 (struct thread*) ; 

int
FUNC22(struct thread *td, cpulevel_t level, cpuwhich_t which,
    id_t id, size_t domainsetsize, const domainset_t *maskp, int policy)
{
	struct cpuset *nset;
	struct cpuset *set;
	struct thread *ttd;
	struct proc *p;
	struct domainset domain;
	domainset_t *mask;
	int error;

	if (domainsetsize < sizeof(domainset_t) ||
	    domainsetsize > DOMAINSET_MAXSIZE / NBBY)
		return (ERANGE);
	if (policy <= DOMAINSET_POLICY_INVALID ||
	    policy > DOMAINSET_POLICY_MAX)
		return (EINVAL);
	/* In Capability mode, you can only set your own CPU set. */
	if (FUNC4(td)) {
		if (level != CPU_LEVEL_WHICH)
			return (ECAPMODE);
		if (which != CPU_WHICH_TID && which != CPU_WHICH_PID)
			return (ECAPMODE);
		if (id != -1)
			return (ECAPMODE);
	}
	FUNC19(&domain, 0, sizeof(domain));
	mask = FUNC18(domainsetsize, M_TEMP, M_WAITOK | M_ZERO);
	error = FUNC7(maskp, mask, domainsetsize);
	if (error)
		goto out;
	/*
	 * Verify that no high bits are set.
	 */
	if (domainsetsize > sizeof(domainset_t)) {
		char *end;
		char *cp;

		end = cp = (char *)&mask->__bits;
		end += domainsetsize;
		cp += sizeof(domainset_t);
		while (cp != end)
			if (*cp++ != 0) {
				error = EINVAL;
				goto out;
			}

	}
	FUNC0(mask, &domain.ds_mask);
	domain.ds_policy = policy;

	/*
	 * Sanitize the provided mask.
	 */
	if (!FUNC3(&all_domains, &domain.ds_mask)) {
		error = EINVAL;
		goto out;
	}

	/* Translate preferred policy into a mask and fallback. */
	if (policy == DOMAINSET_POLICY_PREFER) {
		/* Only support a single preferred domain. */
		if (FUNC1(&domain.ds_mask) != 1) {
			error = EINVAL;
			goto out;
		}
		domain.ds_prefer = FUNC2(&domain.ds_mask) - 1;
		/* This will be constrained by domainset_shadow(). */
		FUNC0(&all_domains, &domain.ds_mask);
	}

	/*
	 * When given an impossible policy, fall back to interleaving
	 * across all domains.
	 */
	if (FUNC16(&domain))
		FUNC15(&domainset2, &domain);

	switch (level) {
	case CPU_LEVEL_ROOT:
	case CPU_LEVEL_CPUSET:
		error = FUNC14(which, id, &p, &ttd, &set);
		if (error)
			break;
		switch (which) {
		case CPU_WHICH_TID:
		case CPU_WHICH_PID:
			FUNC20(ttd);
			set = FUNC9(ttd->td_cpuset);
			FUNC21(ttd);
			FUNC5(p);
			break;
		case CPU_WHICH_CPUSET:
		case CPU_WHICH_JAIL:
			break;
		case CPU_WHICH_IRQ:
		case CPU_WHICH_INTRHANDLER:
		case CPU_WHICH_ITHREAD:
		case CPU_WHICH_DOMAIN:
			error = EINVAL;
			goto out;
		}
		if (level == CPU_LEVEL_ROOT)
			nset = FUNC11(set);
		else
			nset = FUNC10(set);
		error = FUNC8(nset, &domain);
		FUNC12(nset);
		FUNC12(set);
		break;
	case CPU_LEVEL_WHICH:
		switch (which) {
		case CPU_WHICH_TID:
			error = FUNC6(id, NULL, &domain);
			break;
		case CPU_WHICH_PID:
			error = FUNC13(id, NULL, NULL, &domain);
			break;
		case CPU_WHICH_CPUSET:
		case CPU_WHICH_JAIL:
			error = FUNC14(which, id, &p, &ttd, &set);
			if (error == 0) {
				error = FUNC8(set, &domain);
				FUNC12(set);
			}
			break;
		case CPU_WHICH_IRQ:
		case CPU_WHICH_INTRHANDLER:
		case CPU_WHICH_ITHREAD:
		default:
			error = EINVAL;
			break;
		}
		break;
	default:
		error = EINVAL;
		break;
	}
out:
	FUNC17(mask, M_TEMP);
	return (error);
}