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
struct ypldap_addr {int dummy; } ;
struct idm {int /*<<< orphan*/  idm_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ypldap_addr* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct ypldap_addr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ypldap_addr*) ; 
 int /*<<< orphan*/  next ; 

int
FUNC4(struct idm *idm)
{
        struct ypldap_addr         *h;

	while (!FUNC0(&idm->idm_addr)) {
		h = FUNC1(&idm->idm_addr);
		FUNC2(&idm->idm_addr, h, next);
		FUNC3(h);
	}

	return (0);
}