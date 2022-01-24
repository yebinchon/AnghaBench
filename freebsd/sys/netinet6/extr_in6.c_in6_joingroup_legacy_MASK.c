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
struct in6_multi_mship {int /*<<< orphan*/  i6mm_maddr; } ;
struct in6_addr {int dummy; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  M_IP6MADDR ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int PR_FASTHZ ; 
 int /*<<< orphan*/  FUNC0 (struct in6_multi_mship*,int /*<<< orphan*/ ) ; 
 int hz ; 
 int FUNC1 (struct ifnet*,struct in6_addr const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct in6_multi_mship* FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct in6_multi_mship *
FUNC3(struct ifnet *ifp, const struct in6_addr *mcaddr,
    int *errorp, int delay)
{
	struct in6_multi_mship *imm;
	int error;

	imm = FUNC2(sizeof(*imm), M_IP6MADDR, M_NOWAIT);
	if (imm == NULL) {
		*errorp = ENOBUFS;
		return (NULL);
	}

	delay = (delay * PR_FASTHZ) / hz;

	error = FUNC1(ifp, mcaddr, NULL, &imm->i6mm_maddr, delay);
	if (error) {
		*errorp = error;
		FUNC0(imm, M_IP6MADDR);
		return (NULL);
	}

	return (imm);
}