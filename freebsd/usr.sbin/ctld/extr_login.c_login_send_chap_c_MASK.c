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
struct chap {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (struct chap*) ; 
 char* FUNC1 (struct chap*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct keys*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct keys*) ; 
 struct keys* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct keys*,struct pdu*) ; 
 struct pdu* FUNC7 (struct pdu*) ; 
 int /*<<< orphan*/  FUNC8 (struct pdu*) ; 
 int /*<<< orphan*/  FUNC9 (struct pdu*) ; 

__attribute__((used)) static void
FUNC10(struct pdu *request, struct chap *chap)
{
	struct pdu *response;
	struct keys *response_keys;
	char *chap_c, *chap_i;

	chap_c = FUNC0(chap);
	chap_i = FUNC1(chap);

	response = FUNC7(request);
	response_keys = FUNC5();
	FUNC3(response_keys, "CHAP_A", "5");
	FUNC3(response_keys, "CHAP_I", chap_i);
	FUNC3(response_keys, "CHAP_C", chap_c);
	FUNC2(chap_i);
	FUNC2(chap_c);
	FUNC6(response_keys, response);
	FUNC9(response);
	FUNC8(response);
	FUNC4(response_keys);
}