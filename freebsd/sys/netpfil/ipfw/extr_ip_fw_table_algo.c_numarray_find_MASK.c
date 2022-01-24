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
struct table_info {int /*<<< orphan*/  data; int /*<<< orphan*/  state; } ;
struct numarray {int dummy; } ;

/* Variables and functions */
 struct numarray* FUNC0 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  compare_ifidx ; 

__attribute__((used)) static struct numarray *
FUNC1(struct table_info *ti, void *key)
{
	struct numarray *ri;

	ri = FUNC0(key, ti->state, ti->data, sizeof(struct numarray),
	    compare_ifidx);

	return (ri);
}