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
struct uni_msg {int /*<<< orphan*/  b_buf; } ;
struct ngatm_msg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ngatm_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_UNIMSG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngatm_freeuni ; 
 int /*<<< orphan*/  ngatm_unilist_mtx ; 

void
FUNC4(struct uni_msg *m)
{
	struct ngatm_msg *a;

	a = (struct ngatm_msg *)m;

	FUNC1(m->b_buf, M_UNIMSG);

	FUNC2(&ngatm_unilist_mtx);
	FUNC0(&ngatm_freeuni, a, link);
	FUNC3(&ngatm_unilist_mtx);
}