#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint16_t ;
struct TYPE_5__ {scalar_t__ type; int event; } ;
typedef  TYPE_1__ ng_hci_event_pkt_t ;
struct TYPE_6__ {int opcode; char status; } ;
typedef  TYPE_2__ ng_hci_command_status_ep ;
struct TYPE_7__ {int opcode; } ;
typedef  TYPE_3__ ng_hci_command_compl_ep ;
struct TYPE_8__ {scalar_t__ length; scalar_t__ opcode; int /*<<< orphan*/  type; } ;
typedef  TYPE_4__ ng_hci_cmd_pkt_t ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  EMSGSIZE ; 
 scalar_t__ ERROR ; 
 int /*<<< orphan*/  NG_HCI_CMD_PKT ; 
 int NG_HCI_CMD_PKT_SIZE ; 
#define  NG_HCI_EVENT_COMMAND_COMPL 129 
#define  NG_HCI_EVENT_COMMAND_STATUS 128 
 scalar_t__ NG_HCI_EVENT_PKT ; 
 int OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (int,char*,int*) ; 
 scalar_t__ FUNC2 (int,char*,int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 

int
FUNC6(int s, int opcode, char const *cp, int cp_size, char *rp, int *rp_size)
{
	char			 buffer[512];
	int			 n;
	ng_hci_cmd_pkt_t	*c = (ng_hci_cmd_pkt_t *) buffer;
	ng_hci_event_pkt_t	*e = (ng_hci_event_pkt_t *) buffer;

	FUNC0(rp != NULL);
	FUNC0(rp_size != NULL);
	FUNC0(*rp_size > 0);

	c->type = NG_HCI_CMD_PKT;
	c->opcode = (uint16_t) opcode;
	c->opcode = FUNC3(c->opcode);

	if (cp != NULL) {
		FUNC0(0 < cp_size && cp_size <= NG_HCI_CMD_PKT_SIZE);

		c->length = (uint8_t) cp_size;
		FUNC5(buffer + sizeof(*c), cp, cp_size);
	} else
		c->length = 0;

	if (FUNC2(s, buffer, sizeof(*c) + cp_size) == ERROR)
		return (ERROR);

again:
	n = sizeof(buffer);
	if (FUNC1(s, buffer, &n) == ERROR)
		return (ERROR);

	if (n < sizeof(*e)) {
		errno = EMSGSIZE;
		return (ERROR);
	}

	if (e->type != NG_HCI_EVENT_PKT) {
		errno = EIO;
		return (ERROR);
	}

	switch (e->event) {
	case NG_HCI_EVENT_COMMAND_COMPL: {
		ng_hci_command_compl_ep	*cc = 
				(ng_hci_command_compl_ep *)(e + 1);

		cc->opcode = FUNC4(cc->opcode);

		if (cc->opcode == 0x0000 || cc->opcode != opcode)
			goto again; 

		n -= (sizeof(*e) + sizeof(*cc));
		if (n < *rp_size)
			*rp_size = n;

		FUNC5(rp, buffer + sizeof(*e) + sizeof(*cc), *rp_size);
		} break;

	case NG_HCI_EVENT_COMMAND_STATUS: {
		ng_hci_command_status_ep	*cs = 
				(ng_hci_command_status_ep *)(e + 1);

		cs->opcode = FUNC4(cs->opcode);

		if (cs->opcode == 0x0000 || cs->opcode != opcode)
			goto again; 

		*rp_size = 1;
		*rp = cs->status;
		} break;

	default:
		goto again;
	}

	return (OK);
}