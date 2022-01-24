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
struct auth_hash {int dummy; } ;
struct TYPE_3__ {int sadb_alg; struct auth_hash const* xform; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 TYPE_1__* supported_aalgs ; 

const struct auth_hash *
FUNC1(int alg)
{
	int i;

	for (i = 0; i < FUNC0(supported_aalgs); i++)
		if (alg == supported_aalgs[i].sadb_alg)
			return (supported_aalgs[i].xform);
	return (NULL);
}