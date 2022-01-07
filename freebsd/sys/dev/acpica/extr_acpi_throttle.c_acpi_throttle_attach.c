
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct cf_setting {int freq; } ;
struct acpi_throttle_softc {int cpu_p_blk_len; int cpu_p_blk; int cpu_handle; int cpu_dev; } ;
typedef int device_t ;
struct TYPE_8__ {int * Pointer; int Length; } ;
struct TYPE_6__ {int PblkLength; int PblkAddress; } ;
struct TYPE_7__ {TYPE_1__ Processor; } ;
typedef int ACPI_STATUS ;
typedef TYPE_2__ ACPI_OBJECT ;
typedef TYPE_3__ ACPI_BUFFER ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int AcpiEvaluateObject (int ,int *,int *,TYPE_3__*) ;
 int AcpiFormatException (int ) ;
 int AcpiOsFree (TYPE_2__*) ;
 int ENXIO ;
 int acpi_get_handle (int ) ;
 int acpi_thr_set (int ,struct cf_setting*) ;
 int acpi_throttle_evaluate (struct acpi_throttle_softc*) ;
 int acpi_throttle_quirks (struct acpi_throttle_softc*) ;
 int cpufreq_register (int ) ;
 struct acpi_throttle_softc* device_get_softc (int ) ;
 scalar_t__ device_get_unit (int ) ;
 int device_printf (int ,char*,int ) ;

__attribute__((used)) static int
acpi_throttle_attach(device_t dev)
{
 struct acpi_throttle_softc *sc;
 struct cf_setting set;
 ACPI_BUFFER buf;
 ACPI_OBJECT *obj;
 ACPI_STATUS status;
 int error;

 sc = device_get_softc(dev);
 sc->cpu_dev = dev;
 sc->cpu_handle = acpi_get_handle(dev);

 buf.Pointer = ((void*)0);
 buf.Length = ACPI_ALLOCATE_BUFFER;
 status = AcpiEvaluateObject(sc->cpu_handle, ((void*)0), ((void*)0), &buf);
 if (ACPI_FAILURE(status)) {
  device_printf(dev, "attach failed to get Processor obj - %s\n",
      AcpiFormatException(status));
  return (ENXIO);
 }
 obj = (ACPI_OBJECT *)buf.Pointer;
 sc->cpu_p_blk = obj->Processor.PblkAddress;
 sc->cpu_p_blk_len = obj->Processor.PblkLength;
 AcpiOsFree(obj);


 if (device_get_unit(dev) == 0)
  acpi_throttle_quirks(sc);


 error = acpi_throttle_evaluate(sc);
 if (error)
  return (error);





 set.freq = 10000;
 acpi_thr_set(dev, &set);


 cpufreq_register(dev);
 return (0);
}
