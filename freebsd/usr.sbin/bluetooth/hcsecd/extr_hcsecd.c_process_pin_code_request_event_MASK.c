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
struct sockaddr_hci {int /*<<< orphan*/  hci_node; } ;
typedef  TYPE_1__* link_key_p ;
typedef  int /*<<< orphan*/ * bdaddr_p ;
struct TYPE_3__ {char* name; int /*<<< orphan*/ * pin; int /*<<< orphan*/  bdaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,struct sockaddr_hci*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int
FUNC4(int sock, struct sockaddr_hci *addr,
		bdaddr_p bdaddr)
{
	link_key_p	key = NULL;

	FUNC3(LOG_DEBUG, "Got PIN_Code_Request event from '%s', " \
			"remote bdaddr %s", addr->hci_node,
			FUNC0(bdaddr, NULL));

	if ((key = FUNC1(bdaddr, 0)) != NULL) {
		FUNC3(LOG_DEBUG, "Found matching entry, " \
				"remote bdaddr %s, name '%s', PIN code %s",
				FUNC0(&key->bdaddr, NULL),
				(key->name != NULL)? key->name : "No name",
				(key->pin != NULL)? "exists" : "doesn't exist");

		return (FUNC2(sock, addr, bdaddr, key->pin));
	}

	FUNC3(LOG_DEBUG, "Could not PIN code for remote bdaddr %s",
			FUNC0(bdaddr, NULL));

	return (FUNC2(sock, addr, bdaddr, NULL));
}