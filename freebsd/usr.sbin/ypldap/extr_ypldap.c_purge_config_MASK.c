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
struct idm {int dummy; } ;
struct env {int /*<<< orphan*/  sc_idms; } ;

/* Variables and functions */
 struct idm* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct idm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct idm*) ; 
 int /*<<< orphan*/  idm_entry ; 

void
FUNC3(struct env *env)
{
	struct idm	*idm;

	while ((idm = FUNC0(&env->sc_idms)) != NULL) {
		FUNC1(&env->sc_idms, idm, idm_entry);
		FUNC2(idm);
	}
}