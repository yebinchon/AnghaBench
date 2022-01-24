#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uintmax_t ;
struct TCPAevent {int event_size; scalar_t__ event_type; } ;
struct TYPE_7__ {scalar_t__ log_max_len; scalar_t__ log_start_addr; } ;
struct TYPE_6__ {scalar_t__ log_max_len; scalar_t__ log_start_addr; } ;
struct TCPAbody {int platform_class; TYPE_2__ server; TYPE_1__ client; } ;
struct TYPE_8__ {int Revision; } ;
typedef  TYPE_3__ ACPI_TABLE_HEADER ;

/* Variables and functions */
#define  ACPI_TCPA_BIOS_CLIENT 129 
#define  ACPI_TCPA_BIOS_SERVER 128 
 char* BEGIN_COMMENT ; 
 char* END_COMMENT ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (struct TCPAevent*) ; 
 scalar_t__ FUNC3 (unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static void
FUNC5(ACPI_TABLE_HEADER *sdp)
{
	struct TCPAbody *tcpa;
	struct TCPAevent *event;
	uintmax_t len, paddr;
	unsigned char *vaddr = NULL;
	unsigned char *vend = NULL;

	FUNC4(BEGIN_COMMENT);
	FUNC1(sdp);
	tcpa = (struct TCPAbody *) sdp;

	switch (tcpa->platform_class) {
	case ACPI_TCPA_BIOS_CLIENT:
		len = tcpa->client.log_max_len;
		paddr = tcpa->client.log_start_addr;
		break;

	case ACPI_TCPA_BIOS_SERVER:
		len = tcpa->server.log_max_len;
		paddr = tcpa->server.log_start_addr;
		break;

	default:
		FUNC4("XXX");
		FUNC4(END_COMMENT);
		return;
	}
	FUNC4("\tClass %u Base Address 0x%jx Length %ju\n\n",
	    tcpa->platform_class, paddr, len);

	if (len == 0) {
		FUNC4("\tEmpty TCPA table\n");
		FUNC4(END_COMMENT);
		return;
	}
	if(sdp->Revision == 1){
		FUNC4("\tOLD TCPA spec log found. Dumping not supported.\n");
		FUNC4(END_COMMENT);
		return;
	}

	vaddr = (unsigned char *)FUNC0(paddr, len);
	vend = vaddr + len;

	while (vaddr != NULL) {
		if ((vaddr + sizeof(struct TCPAevent) >= vend)||
		    (vaddr + sizeof(struct TCPAevent) < vaddr))
			break;
		event = (struct TCPAevent *)(void *)vaddr;
		if (vaddr + event->event_size >= vend)
			break;
		if (vaddr + event->event_size < vaddr)
			break;
		if (event->event_type == 0 && event->event_size == 0)
			break;
#if 0
		{
		unsigned int i, j, k;

		printf("\n\tsize %d\n\t\t%p ", event->event_size, vaddr);
		for (j = 0, i = 0; i <
		    sizeof(struct TCPAevent) + event->event_size; i++) {
			printf("%02x ", vaddr[i]);
			if ((i+1) % 8 == 0) {
				for (k = 0; k < 8; k++)
					printf("%c", isprint(vaddr[j+k]) ?
					    vaddr[j+k] : '.');
				printf("\n\t\t%p ", &vaddr[i + 1]);
				j = i + 1;
			}
		}
		printf("\n"); }
#endif
		FUNC2(event);

		vaddr += sizeof(struct TCPAevent) + event->event_size;
	}

	FUNC4(END_COMMENT);
}