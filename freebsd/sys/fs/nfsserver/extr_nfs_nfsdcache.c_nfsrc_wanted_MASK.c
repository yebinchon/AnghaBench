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
struct nfsrvcache {int rc_flag; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int RC_WANTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct nfsrvcache *rp)
{
	if (rp->rc_flag & RC_WANTED) {
		rp->rc_flag &= ~RC_WANTED;
		FUNC0((caddr_t)rp);
	}
}