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
 int /*<<< orphan*/  FUNC0 (struct keys*) ; 
 char* FUNC1 (struct keys*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct keys*,struct pdu*) ; 
 struct keys* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 struct pdu* FUNC6 (struct connection*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct pdu*,int,int) ; 

__attribute__((used)) static struct pdu *
FUNC8(struct connection *conn)
{
	struct pdu *request;
	struct keys *request_keys;
	const char *chap_a;

	request = FUNC6(conn, false);
	request_keys = FUNC3();
	FUNC2(request_keys, request);

	chap_a = FUNC1(request_keys, "CHAP_A");
	if (chap_a == NULL) {
		FUNC7(request, 0x02, 0x07);
		FUNC4(1, "received CHAP Login PDU without CHAP_A");
	}
	if (FUNC5(chap_a, "5") == 0) {
		FUNC7(request, 0x02, 0x01);
		FUNC4(1, "received CHAP Login PDU with unsupported CHAP_A "
		    "\"%s\"", chap_a);
	}
	FUNC0(request_keys);

	return (request);
}