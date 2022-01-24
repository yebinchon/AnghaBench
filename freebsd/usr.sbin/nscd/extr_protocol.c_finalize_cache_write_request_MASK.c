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
struct cache_write_request {int /*<<< orphan*/  data; int /*<<< orphan*/  cache_key; int /*<<< orphan*/  entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void (*) (struct cache_write_request*)) ; 
 int /*<<< orphan*/  FUNC1 (void (*) (struct cache_write_request*)) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(struct cache_write_request *write_request)
{

	FUNC0(finalize_cache_write_request);
	FUNC2(write_request->entry);
	FUNC2(write_request->cache_key);
	FUNC2(write_request->data);
	FUNC1(finalize_cache_write_request);
}