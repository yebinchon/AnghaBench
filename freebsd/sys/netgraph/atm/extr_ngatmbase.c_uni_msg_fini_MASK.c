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
struct ngatm_msg {int dummy; } ;

/* Variables and functions */
 struct ngatm_msg* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ngatm_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_UNIMSGHDR ; 
 int /*<<< orphan*/  FUNC2 (struct ngatm_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngatm_freeuni ; 
 int /*<<< orphan*/  ngatm_unilist_mtx ; 

__attribute__((used)) static void
FUNC4(void)
{
	struct ngatm_msg *h;

	/* free all free message headers */
	while ((h = FUNC0(&ngatm_freeuni)) != NULL) {
		FUNC1(h, link);
		FUNC2(h, M_UNIMSGHDR);
	}

	FUNC3(&ngatm_unilist_mtx);
}