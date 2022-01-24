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
typedef  int uint64_t ;
struct gss_resource {int gr_id; void* gr_res; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct gss_resource*,int /*<<< orphan*/ ) ; 
 int debug_level ; 
 int /*<<< orphan*/  gr_link ; 
 int /*<<< orphan*/  gss_next_id ; 
 int gss_resource_count ; 
 int /*<<< orphan*/  gss_resources ; 
 scalar_t__ gss_start_time ; 
 struct gss_resource* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static uint64_t
FUNC3(void *res)
{
	struct gss_resource *gr;

	if (!res)
		return (0);

	gr = FUNC1(sizeof(struct gss_resource));
	if (!gr)
		return (0);
	gr->gr_id = (gss_next_id++) + ((uint64_t) gss_start_time << 32);
	gr->gr_res = res;
	FUNC0(&gss_resources, gr, gr_link);
	gss_resource_count++;
	if (debug_level > 1)
		FUNC2("%d resources allocated\n", gss_resource_count);

	return (gr->gr_id);
}