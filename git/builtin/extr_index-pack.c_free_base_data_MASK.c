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
struct base_data {scalar_t__ size; scalar_t__ data; } ;
struct TYPE_2__ {int /*<<< orphan*/  base_cache_used; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 TYPE_1__* FUNC1 () ; 

__attribute__((used)) static void FUNC2(struct base_data *c)
{
	if (c->data) {
		FUNC0(c->data);
		FUNC1()->base_cache_used -= c->size;
	}
}