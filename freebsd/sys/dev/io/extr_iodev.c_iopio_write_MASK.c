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
struct iodev_pio_req {int width; int port; int val; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static int
FUNC3(struct iodev_pio_req *req)
{

	switch (req->width) {
	case 1:
		FUNC0(req->port, req->val);
		break;
	case 2:
		if (req->port & 1) {
			FUNC0(req->port, req->val);
			FUNC0(req->port + 1, req->val >> 8);
		} else
			FUNC1(req->port, req->val);
		break;
	case 4:
		if (req->port & 1) {
			FUNC0(req->port, req->val);
			FUNC1(req->port + 1, req->val >> 8);
			FUNC0(req->port + 3, req->val >> 24);
		} else if (req->port & 2) {
			FUNC1(req->port, req->val);
			FUNC1(req->port + 2, req->val >> 16);
		} else
			FUNC2(req->port, req->val);
		break;
	default:
		return (EINVAL);
	}

	return (0);
}