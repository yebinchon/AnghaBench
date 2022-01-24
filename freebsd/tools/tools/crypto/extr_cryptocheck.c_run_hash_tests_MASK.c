#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_int ;
struct TYPE_4__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ T_HASH ; 
 TYPE_1__* algs ; 
 size_t FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,size_t*,size_t) ; 

__attribute__((used)) static void
FUNC2(size_t *sizes, u_int nsizes)
{
	u_int i;

	for (i = 0; i < FUNC0(algs); i++)
		if (algs[i].type == T_HASH)
			FUNC1(&algs[i], sizes, nsizes);
}