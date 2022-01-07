
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
struct acpi_px {int dummy; } ;
struct acpi_perf_softc {int px_count; scalar_t__ px_rid; int * perf_status; int perf_sts_type; int dev; int * perf_ctrl; int perf_ctrl_type; TYPE_4__* px_states; int handle; void* info_only; } ;
typedef int device_t ;
struct TYPE_13__ {int core_freq; } ;
struct TYPE_12__ {int * Pointer; void* Length; } ;
struct TYPE_10__ {int Count; TYPE_2__* Elements; } ;
struct TYPE_11__ {TYPE_1__ Package; } ;
typedef int ACPI_STATUS ;
typedef TYPE_2__ ACPI_OBJECT ;
typedef TYPE_3__ ACPI_BUFFER ;


 void* ACPI_ALLOCATE_BUFFER ;
 int ACPI_DEVICE_NOTIFY ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_PKG_VALID (TYPE_2__*,int) ;
 int AcpiEvaluateObject (int ,char*,int *,TYPE_3__*) ;
 int AcpiInstallNotifyHandler (int ,int ,int ,struct acpi_perf_softc*) ;
 int AcpiOsFree (int *) ;
 int ENXIO ;
 int EOPNOTSUPP ;
 int M_ACPIPERF ;
 int M_WAITOK ;
 int M_ZERO ;
 void* TRUE ;
 int acpi_PkgGas (int ,TYPE_2__*,int,int *,scalar_t__*,int **,int ) ;
 int acpi_PkgInt32 (TYPE_2__*,int,int*) ;
 int acpi_px_available (struct acpi_perf_softc*) ;
 int acpi_px_notify ;
 int bus_delete_resource (int ,int ,int) ;
 int bus_release_resource (int ,int ,int,int *) ;
 struct acpi_perf_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int free (TYPE_4__*,int ) ;
 TYPE_4__* malloc (int,int ,int) ;

__attribute__((used)) static int
acpi_perf_evaluate(device_t dev)
{
 struct acpi_perf_softc *sc;
 ACPI_BUFFER buf;
 ACPI_OBJECT *pkg, *res;
 ACPI_STATUS status;
 int count, error, i, j;
 static int once = 1;
 uint32_t *p;


 error = ENXIO;
 sc = device_get_softc(dev);
 buf.Pointer = ((void*)0);
 buf.Length = ACPI_ALLOCATE_BUFFER;
 status = AcpiEvaluateObject(sc->handle, "_PSS", ((void*)0), &buf);
 if (ACPI_FAILURE(status))
  return (ENXIO);

 pkg = (ACPI_OBJECT *)buf.Pointer;
 if (!ACPI_PKG_VALID(pkg, 1)) {
  device_printf(dev, "invalid top level _PSS package\n");
  goto out;
 }
 sc->px_count = pkg->Package.Count;

 sc->px_states = malloc(sc->px_count * sizeof(struct acpi_px),
     M_ACPIPERF, M_WAITOK | M_ZERO);






 count = 0;
 for (i = 0; i < sc->px_count; i++) {
  res = &pkg->Package.Elements[i];
  if (!ACPI_PKG_VALID(res, 6)) {
   if (once) {
    once = 0;
    device_printf(dev, "invalid _PSS package\n");
   }
   continue;
  }


  p = &sc->px_states[count].core_freq;
  for (j = 0; j < 6; j++, p++)
   acpi_PkgInt32(res, j, p);





  if (sc->px_states[count].core_freq == 0 ||
      sc->px_states[count].core_freq == 9999 ||
      sc->px_states[count].core_freq == 0x9999 ||
      sc->px_states[count].core_freq >= 0xffff)
   continue;


  if (count > 0 &&
      sc->px_states[count - 1].core_freq ==
   sc->px_states[count].core_freq)
   continue;

  count++;
 }
 sc->px_count = count;


 if (count == 0)
  goto out;
 AcpiOsFree(buf.Pointer);


 buf.Pointer = ((void*)0);
 buf.Length = ACPI_ALLOCATE_BUFFER;
 status = AcpiEvaluateObject(sc->handle, "_PCT", ((void*)0), &buf);
 if (ACPI_FAILURE(status))
  goto out;


 pkg = (ACPI_OBJECT *)buf.Pointer;
 if (!ACPI_PKG_VALID(pkg, 2)) {
  device_printf(dev, "invalid perf register package\n");
  goto out;
 }

 error = acpi_PkgGas(sc->dev, pkg, 0, &sc->perf_ctrl_type, &sc->px_rid,
     &sc->perf_ctrl, 0);
 if (error) {




  if (error == EOPNOTSUPP) {
   sc->info_only = TRUE;
   error = 0;
  } else
   device_printf(dev, "failed in PERF_CTL attach\n");
  goto out;
 }
 sc->px_rid++;

 error = acpi_PkgGas(sc->dev, pkg, 1, &sc->perf_sts_type, &sc->px_rid,
     &sc->perf_status, 0);
 if (error) {
  if (error == EOPNOTSUPP) {
   sc->info_only = TRUE;
   error = 0;
  } else
   device_printf(dev, "failed in PERF_STATUS attach\n");
  goto out;
 }
 sc->px_rid++;


 acpi_px_available(sc);
 AcpiInstallNotifyHandler(sc->handle, ACPI_DEVICE_NOTIFY,
     acpi_px_notify, sc);
 error = 0;

out:
 if (error) {
  if (sc->px_states) {
   free(sc->px_states, M_ACPIPERF);
   sc->px_states = ((void*)0);
  }
  if (sc->perf_ctrl) {
   bus_release_resource(sc->dev, sc->perf_ctrl_type, 0,
       sc->perf_ctrl);
   bus_delete_resource(sc->dev, sc->perf_ctrl_type, 0);
   sc->perf_ctrl = ((void*)0);
  }
  if (sc->perf_status) {
   bus_release_resource(sc->dev, sc->perf_sts_type, 1,
       sc->perf_status);
   bus_delete_resource(sc->dev, sc->perf_sts_type, 1);
   sc->perf_status = ((void*)0);
  }
  sc->px_rid = 0;
  sc->px_count = 0;
 }
 if (buf.Pointer)
  AcpiOsFree(buf.Pointer);
 return (error);
}
