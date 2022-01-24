#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct sysctl_oid_list {int dummy; } ;
struct acpi_uhub_softc {struct acpi_uhub_port* port; } ;
struct acpi_uhub_port {int /*<<< orphan*/  pld; } ;
typedef  int /*<<< orphan*/  resbuf ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_10__ {TYPE_3__* Pointer; int /*<<< orphan*/  Length; } ;
struct TYPE_8__ {int Length; unsigned char* Pointer; } ;
struct TYPE_7__ {TYPE_3__* Elements; } ;
struct TYPE_9__ {scalar_t__ Type; TYPE_2__ Buffer; TYPE_1__ Package; } ;
typedef  TYPE_3__ ACPI_OBJECT ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;
typedef  TYPE_4__ ACPI_BUFFER ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALLOCATE_BUFFER ; 
 int ACPI_PLD_SIZE ; 
 scalar_t__ ACPI_TYPE_BUFFER ; 
 scalar_t__ ACPI_TYPE_PACKAGE ; 
 scalar_t__ AE_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int CTLFLAG_MPSAFE ; 
 int CTLFLAG_RD ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int,char*,char*) ; 
 struct acpi_uhub_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 scalar_t__ usb_debug ; 

__attribute__((used)) static int
FUNC7(device_t dev, unsigned int p, ACPI_HANDLE ah, struct sysctl_oid_list *tree)
{
	ACPI_BUFFER buf;
	struct acpi_uhub_softc *sc = FUNC3(dev);
	struct acpi_uhub_port *port = &sc->port[p - 1];

	buf.Pointer = NULL;
	buf.Length = ACPI_ALLOCATE_BUFFER;

	if (FUNC0(ah, "_PLD", NULL, &buf) == AE_OK) {
		ACPI_OBJECT *obj;
		unsigned char *resbuf;
		int len;

		obj = buf.Pointer;

		if (obj->Type == ACPI_TYPE_PACKAGE
		    && obj->Package.Elements[0].Type == ACPI_TYPE_BUFFER) {
			ACPI_OBJECT *obj1;

			obj1 = &obj->Package.Elements[0];
			len = obj1->Buffer.Length;
			resbuf = obj1->Buffer.Pointer;
		} else if (obj->Type == ACPI_TYPE_BUFFER) {
			len = obj->Buffer.Length;
			resbuf = obj->Buffer.Pointer;
		} else {
			goto skip;
		}
		len = (len < ACPI_PLD_SIZE) ? len : ACPI_PLD_SIZE;
		FUNC6(port->pld, resbuf, len);
		FUNC2(
		    FUNC4(dev), tree, OID_AUTO,
		    "pldraw", CTLFLAG_RD | CTLFLAG_MPSAFE,
		    port->pld, len, "A", "Raw PLD value");

		if (usb_debug) {
			FUNC5(dev, "Revision:%d\n",
			    resbuf[0] & 0x7f);
			if ((resbuf[0] & 0x80) == 0) {
				FUNC5(dev,
				    "Color:#%02x%02x%02x\n",
				    resbuf[1], resbuf[2],
				    resbuf[3]);
			}
			FUNC5(dev, "Width %d mm Height %d mm\n",
			    resbuf[4] | (resbuf[5] << 8),
			    resbuf[6] | (resbuf[7] << 8));
			if (resbuf[8] & 1) {
				FUNC5(dev, "Visible\n");
			}
			if (resbuf[8] & 2) {
				FUNC5(dev, "Dock\n");
			}
			if (resbuf[8] & 4) {
				FUNC5(dev, "Lid\n");
			}
			FUNC5(dev, "PanelPosition: %d\n",
			    (resbuf[8] >> 3) & 7);
			FUNC5(dev, "VertPosition: %d\n",
			    (resbuf[8] >> 6) & 3);
			FUNC5(dev, "HorizPosition: %d\n",
			    (resbuf[9]) & 3);
			FUNC5(dev, "Shape: %d\n",
			    (resbuf[9] >> 2) & 0xf);
			FUNC5(dev, "80: %02x, %02x, %02x\n",
			    resbuf[9], resbuf[10], resbuf[11]);
			FUNC5(dev, "96: %02x, %02x, %02x, %02x\n",
			    resbuf[12], resbuf[13],
			    resbuf[14], resbuf[15]);

			if ((resbuf[0] & 0x7f) >= 2) {
				FUNC5(dev, "VOFF%d mm HOFF %dmm",
				    resbuf[16] | (resbuf[17] << 8),
				    resbuf[18] | (resbuf[19] << 8));
			}
		}
	skip:
		FUNC1(buf.Pointer);
	}
	return (0);
}