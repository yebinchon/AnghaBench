
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char uint8_t ;
struct sysctl_oid_list {int dummy; } ;
struct acpi_uhub_softc {struct acpi_uhub_port* port; } ;
struct acpi_uhub_port {scalar_t__ upc; } ;
typedef int device_t ;
typedef scalar_t__ UINT64 ;
struct TYPE_3__ {int * Pointer; int Length; } ;
typedef int ACPI_OBJECT ;
typedef int ACPI_HANDLE ;
typedef TYPE_1__ ACPI_BUFFER ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_UPC_CONNECTABLE ;
 scalar_t__ AE_OK ;
 scalar_t__ AcpiEvaluateObject (int ,char*,int *,TYPE_1__*) ;
 int AcpiOsFree (int *) ;
 int CTLFLAG_MPSAFE ;
 int CTLFLAG_RD ;
 int OID_AUTO ;
 int SYSCTL_ADD_U32 (int ,struct sysctl_oid_list*,int ,char*,int,int ,scalar_t__,char*) ;
 int SYSCTL_NULL_U32_PTR ;
 int acpi_PkgInt (int *,int,scalar_t__*) ;
 int acpi_uhub_upc_type (scalar_t__) ;
 struct acpi_uhub_softc* device_get_softc (int ) ;
 int device_get_sysctl_ctx (int ) ;
 int device_printf (int ,char*,unsigned int,char*,int ) ;
 scalar_t__ usb_debug ;

__attribute__((used)) static int
acpi_uhub_parse_upc(device_t dev, unsigned int p, ACPI_HANDLE ah, struct sysctl_oid_list *poid)
{
 ACPI_BUFFER buf;
 struct acpi_uhub_softc *sc = device_get_softc(dev);
 struct acpi_uhub_port *port = &sc->port[p - 1];

 buf.Pointer = ((void*)0);
 buf.Length = ACPI_ALLOCATE_BUFFER;

 if (AcpiEvaluateObject(ah, "_UPC", ((void*)0), &buf) == AE_OK) {
  ACPI_OBJECT *obj = buf.Pointer;
  UINT64 porttypenum, conn;
  uint8_t *connectable;

  acpi_PkgInt(obj, 0, &conn);
  acpi_PkgInt(obj, 1, &porttypenum);
  connectable = conn ? "" : "non";

  port->upc = porttypenum;
  port->upc |= (conn) ? (ACPI_UPC_CONNECTABLE) : 0;

  if (usb_debug)
   device_printf(dev, "Port %u %sconnectable %s\n",
       p, connectable,
       acpi_uhub_upc_type(porttypenum));

  SYSCTL_ADD_U32(
      device_get_sysctl_ctx(dev),
      poid, OID_AUTO,
      "upc",
      CTLFLAG_RD | CTLFLAG_MPSAFE,
      SYSCTL_NULL_U32_PTR, port->upc,
      "UPC value. MSB is visible flag");
 }
 AcpiOsFree(buf.Pointer);

 return (0);
}
