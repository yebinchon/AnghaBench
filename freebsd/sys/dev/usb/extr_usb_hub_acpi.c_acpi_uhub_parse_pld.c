
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sysctl_oid_list {int dummy; } ;
struct acpi_uhub_softc {struct acpi_uhub_port* port; } ;
struct acpi_uhub_port {int pld; } ;
typedef int resbuf ;
typedef int device_t ;
struct TYPE_10__ {TYPE_3__* Pointer; int Length; } ;
struct TYPE_8__ {int Length; unsigned char* Pointer; } ;
struct TYPE_7__ {TYPE_3__* Elements; } ;
struct TYPE_9__ {scalar_t__ Type; TYPE_2__ Buffer; TYPE_1__ Package; } ;
typedef TYPE_3__ ACPI_OBJECT ;
typedef int ACPI_HANDLE ;
typedef TYPE_4__ ACPI_BUFFER ;


 int ACPI_ALLOCATE_BUFFER ;
 int ACPI_PLD_SIZE ;
 scalar_t__ ACPI_TYPE_BUFFER ;
 scalar_t__ ACPI_TYPE_PACKAGE ;
 scalar_t__ AE_OK ;
 scalar_t__ AcpiEvaluateObject (int ,char*,int *,TYPE_4__*) ;
 int AcpiOsFree (TYPE_3__*) ;
 int CTLFLAG_MPSAFE ;
 int CTLFLAG_RD ;
 int OID_AUTO ;
 int SYSCTL_ADD_OPAQUE (int ,struct sysctl_oid_list*,int ,char*,int,int ,int,char*,char*) ;
 struct acpi_uhub_softc* device_get_softc (int ) ;
 int device_get_sysctl_ctx (int ) ;
 int device_printf (int ,char*,...) ;
 int memcpy (int ,unsigned char*,int) ;
 scalar_t__ usb_debug ;

__attribute__((used)) static int
acpi_uhub_parse_pld(device_t dev, unsigned int p, ACPI_HANDLE ah, struct sysctl_oid_list *tree)
{
 ACPI_BUFFER buf;
 struct acpi_uhub_softc *sc = device_get_softc(dev);
 struct acpi_uhub_port *port = &sc->port[p - 1];

 buf.Pointer = ((void*)0);
 buf.Length = ACPI_ALLOCATE_BUFFER;

 if (AcpiEvaluateObject(ah, "_PLD", ((void*)0), &buf) == AE_OK) {
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
  memcpy(port->pld, resbuf, len);
  SYSCTL_ADD_OPAQUE(
      device_get_sysctl_ctx(dev), tree, OID_AUTO,
      "pldraw", CTLFLAG_RD | CTLFLAG_MPSAFE,
      port->pld, len, "A", "Raw PLD value");

  if (usb_debug) {
   device_printf(dev, "Revision:%d\n",
       resbuf[0] & 0x7f);
   if ((resbuf[0] & 0x80) == 0) {
    device_printf(dev,
        "Color:#%02x%02x%02x\n",
        resbuf[1], resbuf[2],
        resbuf[3]);
   }
   device_printf(dev, "Width %d mm Height %d mm\n",
       resbuf[4] | (resbuf[5] << 8),
       resbuf[6] | (resbuf[7] << 8));
   if (resbuf[8] & 1) {
    device_printf(dev, "Visible\n");
   }
   if (resbuf[8] & 2) {
    device_printf(dev, "Dock\n");
   }
   if (resbuf[8] & 4) {
    device_printf(dev, "Lid\n");
   }
   device_printf(dev, "PanelPosition: %d\n",
       (resbuf[8] >> 3) & 7);
   device_printf(dev, "VertPosition: %d\n",
       (resbuf[8] >> 6) & 3);
   device_printf(dev, "HorizPosition: %d\n",
       (resbuf[9]) & 3);
   device_printf(dev, "Shape: %d\n",
       (resbuf[9] >> 2) & 0xf);
   device_printf(dev, "80: %02x, %02x, %02x\n",
       resbuf[9], resbuf[10], resbuf[11]);
   device_printf(dev, "96: %02x, %02x, %02x, %02x\n",
       resbuf[12], resbuf[13],
       resbuf[14], resbuf[15]);

   if ((resbuf[0] & 0x7f) >= 2) {
    device_printf(dev, "VOFF%d mm HOFF %dmm",
        resbuf[16] | (resbuf[17] << 8),
        resbuf[18] | (resbuf[19] << 8));
   }
  }
 skip:
  AcpiOsFree(buf.Pointer);
 }
 return (0);
}
