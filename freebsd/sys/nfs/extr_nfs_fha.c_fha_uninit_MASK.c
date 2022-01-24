#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct fha_params {TYPE_1__* fha_hash; int /*<<< orphan*/  sysctl_ctx; } ;
struct TYPE_2__ {int /*<<< orphan*/  mtx; } ;

/* Variables and functions */
 int FHA_HASH_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(struct fha_params *softc)
{
	int i;

	FUNC1(&softc->sysctl_ctx);
	for (i = 0; i < FHA_HASH_SIZE; i++)
		FUNC0(&softc->fha_hash[i].mtx);
}