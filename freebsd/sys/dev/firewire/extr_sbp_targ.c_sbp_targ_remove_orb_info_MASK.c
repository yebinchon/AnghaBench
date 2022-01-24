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
struct sbp_targ_login {int /*<<< orphan*/  orbs; } ;
struct orb_info {int /*<<< orphan*/  sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct orb_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  orb_info ; 

__attribute__((used)) static __inline void
FUNC3(struct sbp_targ_login *login, struct orb_info *orbi)
{
	FUNC0(orbi->sc);
	FUNC2(&login->orbs, orbi, orb_info, link);
	FUNC1(orbi->sc);
}