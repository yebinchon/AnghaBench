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
struct pdu {int dummy; } ;
struct keys {int dummy; } ;
struct connection {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BHSLR_STAGE_SECURITY_NEGOTIATION ; 
 int /*<<< orphan*/  FUNC0 (struct keys*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct keys*) ; 
 struct keys* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct keys*,struct pdu*) ; 
 struct pdu* FUNC4 (struct connection*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pdu*) ; 
 int /*<<< orphan*/  FUNC6 (struct pdu*) ; 

__attribute__((used)) static void
FUNC7(struct connection *conn)
{
	struct pdu *request;
	struct keys *request_keys;

	request = FUNC4(conn, BHSLR_STAGE_SECURITY_NEGOTIATION);
	request_keys = FUNC2();
	FUNC0(request_keys, "CHAP_A", "5");
	FUNC3(request_keys, request);
	FUNC1(request_keys);
	FUNC6(request);
	FUNC5(request);
}