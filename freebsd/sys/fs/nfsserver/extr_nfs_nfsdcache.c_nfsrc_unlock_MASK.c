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
struct nfsrvcache {int /*<<< orphan*/  rc_flag; } ;
struct mtx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RC_LOCKED ; 
 int /*<<< orphan*/  FUNC0 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC1 (struct mtx*) ; 
 struct mtx* FUNC2 (struct nfsrvcache*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfsrvcache*) ; 

__attribute__((used)) static void
FUNC4(struct nfsrvcache *rp)
{
	struct mtx *mutex;

	mutex = FUNC2(rp);
	FUNC0(mutex);
	rp->rc_flag &= ~RC_LOCKED;
	FUNC3(rp);
	FUNC1(mutex);
}