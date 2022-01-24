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
struct cache_read_request {int dummy; } ;
struct comm_element {scalar_t__ type; struct cache_read_request c_read_request; } ;

/* Variables and functions */
 scalar_t__ CET_READ_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (struct cache_read_request* (*) (struct comm_element*)) ; 
 int /*<<< orphan*/  FUNC1 (struct cache_read_request* (*) (struct comm_element*)) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

struct cache_read_request *
FUNC3(struct comm_element *element)
{

	FUNC0(get_cache_read_request);
	FUNC2(element->type == CET_READ_REQUEST);
	FUNC1(get_cache_read_request);
	return (&element->c_read_request);
}