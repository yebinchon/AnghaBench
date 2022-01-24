#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ esm_size; int /*<<< orphan*/ * esm_base; scalar_t__ esm_addr; int /*<<< orphan*/  esm_tag; int /*<<< orphan*/  esm_map; } ;
typedef  TYPE_1__ efsys_mem_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC3(efsys_mem_t *esmp)
{

	FUNC1(esmp->esm_tag, esmp->esm_map);
	FUNC2(esmp->esm_tag, esmp->esm_base, esmp->esm_map);
	FUNC0(esmp->esm_tag);

	esmp->esm_addr = 0;
	esmp->esm_base = NULL;
	esmp->esm_size = 0;
}