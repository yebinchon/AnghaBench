#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {int security_description; int /*<<< orphan*/  load_factor; int /*<<< orphan*/  psm; } ;
typedef  TYPE_1__ sdp_nap_profile_t ;
typedef  int /*<<< orphan*/  p ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  control_path ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ l2cap_mode ; 
 int /*<<< orphan*/  l2cap_psm ; 
 int /*<<< orphan*/  local_bdaddr ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,scalar_t__*) ; 
 int /*<<< orphan*/  server_avail ; 
 scalar_t__ server_handle ; 
 int /*<<< orphan*/ * server_ss ; 
 int /*<<< orphan*/  service_class ; 
 int /*<<< orphan*/  service_name ; 

__attribute__((used)) static void
FUNC7(void)
{
	sdp_nap_profile_t p;
	int rv;

	if (server_ss == NULL) {
		server_ss = FUNC5(control_path);
		if (server_ss == NULL || FUNC4(server_ss) != 0) {
			FUNC1("failed to contact SDP server");
			return;
		}
	}

	FUNC2(&p, 0, sizeof(p));
	p.psm = l2cap_psm;
	p.load_factor = server_avail;
	p.security_description = (l2cap_mode == 0 ? 0x0000 : 0x0001);

	if (server_handle)
		rv = FUNC3(server_ss, server_handle,
		    (uint8_t *)&p, sizeof(p));
	else
		rv = FUNC6(server_ss, service_class,
		    &local_bdaddr, (uint8_t *)&p, sizeof(p), &server_handle);

	if (rv != 0) {
		errno = FUNC4(server_ss);
		FUNC1("%s: %m", service_name);
		FUNC0(EXIT_FAILURE);
	}
}