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
struct bhnd_nvram_data {TYPE_1__* cls; } ;
struct TYPE_2__ {void* (* op_find ) (struct bhnd_nvram_data*,char const*) ;} ;

/* Variables and functions */
 void* FUNC0 (struct bhnd_nvram_data*,char const*) ; 

void *
FUNC1(struct bhnd_nvram_data *nv, const char *name)
{
	return (nv->cls->op_find(nv, name));
}