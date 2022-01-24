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
typedef  int /*<<< orphan*/  bhnd_nvram_type ;
struct TYPE_2__ {int (* op_getvar ) (struct bhnd_nvram_data*,void*,void*,size_t*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int FUNC0 (struct bhnd_nvram_data*,void*,void*,size_t*,int /*<<< orphan*/ ) ; 

int
FUNC1(struct bhnd_nvram_data *nv, void *cookiep, void *buf,
    size_t *len, bhnd_nvram_type type)
{
	return (nv->cls->op_getvar(nv, cookiep, buf, len, type));
}