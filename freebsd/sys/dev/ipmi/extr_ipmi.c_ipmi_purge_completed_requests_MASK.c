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
struct ipmi_request {int dummy; } ;
struct ipmi_device {int /*<<< orphan*/  ipmi_requests; int /*<<< orphan*/  ipmi_completed_requests; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ipmi_request* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct ipmi_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ipmi_request*) ; 
 int /*<<< orphan*/  ir_link ; 

__attribute__((used)) static void
FUNC4(struct ipmi_device *dev)
{
	struct ipmi_request *req;

	while (!FUNC0(&dev->ipmi_completed_requests)) {
		req = FUNC1(&dev->ipmi_completed_requests);
		FUNC2(&dev->ipmi_completed_requests, req, ir_link);
		dev->ipmi_requests--;
		FUNC3(req);
	}
}