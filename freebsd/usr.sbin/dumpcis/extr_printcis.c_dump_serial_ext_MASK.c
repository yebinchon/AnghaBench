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
typedef  int u_char ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void
FUNC1(u_char *p, int len)
{
	static const char *type[] = {
		"", "Modem", "Data", "Fax", "Voice", "Data modem",
		"Fax/modem", "Voice", " (Data)", " (Fax)", " (Voice)"
	};

	if (len < 1)
		return;
	switch (p[0]) {
	case 0:			/* Serial */
	case 8:			/* Data */
	case 9:			/* Fax */
	case 10:		/* Voice */
		FUNC0("\tSerial interface extension:%s\n", type[*p]);
		if (len < 4)
			goto err;
		switch (p[1] & 0x1F) {
		default:
			FUNC0("\t\tUnknown device");
			break;
		case 0:
			FUNC0("\t\t8250 UART");
			break;
		case 1:
			FUNC0("\t\t16450 UART");
			break;
		case 2:
			FUNC0("\t\t16550 UART");
			break;
		}
		FUNC0(", Parity - %s%s%s%s\n",
		       (p[2] & 1) ? "Space," : "",
		       (p[2] & 2) ? "Mark," : "",
		       (p[2] & 4) ? "Odd," : "",
		       (p[2] & 8) ? "Even" : "");
		FUNC0("\t\tData bit - %s%s%s%s Stop bit - %s%s%s\n",
		       (p[3] & 1) ? "5bit," : "",
		       (p[3] & 2) ? "6bit," : "",
		       (p[3] & 4) ? "7bit," : "",
		       (p[3] & 8) ? "8bit," : "",
		       (p[3] & 0x10) ? "1bit," : "",
		       (p[3] & 0x20) ? "1.5bit," : "",
		       (p[3] & 0x40) ? "2bit" : "");
		break;
	case 1:			/* Serial */
	case 5:			/* Data */
	case 6:			/* Fax */
	case 7:			/* Voice */
		FUNC0("\t%s interface capabilities:\n", type[*p]);
		if (len < 9)
			goto err;
		break;
	case 2:			/* Data */
		FUNC0("\tData modem services available:\n");
		break;
	case 0x13:		/* Fax1 */
	case 0x23:		/* Fax2 */
	case 0x33:		/* Fax3 */
		FUNC0("\tFax%d/modem services available:\n", *p >> 4);
		break;
	case 0x84:		/* Voice */
		FUNC0("\tVoice services available:\n");
		break;
	err:	/* warning */
		FUNC0("\tWrong length for serial extension tuple\n");
		return;
	}
}