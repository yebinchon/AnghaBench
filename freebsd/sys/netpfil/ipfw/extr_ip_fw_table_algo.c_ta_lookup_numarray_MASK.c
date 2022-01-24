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
typedef  int /*<<< orphan*/  uint32_t ;
struct table_info {int dummy; } ;
struct numarray {int /*<<< orphan*/  value; } ;

/* Variables and functions */
 struct numarray* FUNC0 (struct table_info*,void*) ; 

__attribute__((used)) static int
FUNC1(struct table_info *ti, void *key, uint32_t keylen,
    uint32_t *val)
{
	struct numarray *ri;

	ri = FUNC0(ti, key);

	if (ri != NULL) {
		*val = ri->value;
		return (1);
	}

	return (0);
}