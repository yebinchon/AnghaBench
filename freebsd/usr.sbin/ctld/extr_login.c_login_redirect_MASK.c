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
struct pdu {scalar_t__ pdu_bhs; } ;
struct keys {int dummy; } ;
struct iscsi_bhs_login_response {int bhslr_status_class; int bhslr_status_detail; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct keys*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct keys*) ; 
 struct keys* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct keys*,struct pdu*) ; 
 int /*<<< orphan*/  FUNC4 (struct pdu*) ; 
 struct pdu* FUNC5 (struct pdu*) ; 
 int /*<<< orphan*/  FUNC6 (struct pdu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pdu*) ; 
 int /*<<< orphan*/  FUNC8 (struct pdu*) ; 

__attribute__((used)) static void
FUNC9(struct pdu *request, const char *target_address)
{
	struct pdu *response;
	struct iscsi_bhs_login_response *bhslr2;
	struct keys *response_keys;

	response = FUNC5(request);
	FUNC6(response, FUNC4(request));
	bhslr2 = (struct iscsi_bhs_login_response *)response->pdu_bhs;
	bhslr2->bhslr_status_class = 0x01;
	bhslr2->bhslr_status_detail = 0x01;

	response_keys = FUNC2();
	FUNC0(response_keys, "TargetAddress", target_address);

	FUNC3(response_keys, response);
	FUNC8(response);
	FUNC7(response);
	FUNC1(response_keys);
}