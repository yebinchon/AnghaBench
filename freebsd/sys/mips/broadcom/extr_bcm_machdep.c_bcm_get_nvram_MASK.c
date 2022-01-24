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
struct bcm_platform {int /*<<< orphan*/ * nvram_io; int /*<<< orphan*/ * nvram_cls; } ;
typedef  int /*<<< orphan*/  bhnd_nvram_type ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,void*,size_t*,int /*<<< orphan*/ ) ; 

int
FUNC1(struct bcm_platform *bp, const char *name, void *buf, size_t *len,
    bhnd_nvram_type type)
{
	if (bp->nvram_io == NULL || bp->nvram_cls == NULL)
		return (ENOENT);

	return (FUNC0(bp->nvram_cls, bp->nvram_io, name,
	    buf, len, type));
}