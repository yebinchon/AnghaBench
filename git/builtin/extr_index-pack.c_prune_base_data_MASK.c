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
struct thread_local {scalar_t__ base_cache_used; struct base_data* base_cache; } ;
struct base_data {scalar_t__ data; struct base_data* child; } ;

/* Variables and functions */
 scalar_t__ delta_base_cache_limit ; 
 int /*<<< orphan*/  FUNC0 (struct base_data*) ; 
 struct thread_local* FUNC1 () ; 

__attribute__((used)) static void FUNC2(struct base_data *retain)
{
	struct base_data *b;
	struct thread_local *data = FUNC1();
	for (b = data->base_cache;
	     data->base_cache_used > delta_base_cache_limit && b;
	     b = b->child) {
		if (b->data && b != retain)
			FUNC0(b);
	}
}