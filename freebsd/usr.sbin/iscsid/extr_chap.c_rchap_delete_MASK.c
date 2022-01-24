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
struct rchap {struct rchap* rchap_challenge; struct rchap* rchap_secret; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rchap*) ; 

void
FUNC1(struct rchap *rchap)
{

	FUNC0(rchap->rchap_secret);
	FUNC0(rchap->rchap_challenge);
	FUNC0(rchap);
}