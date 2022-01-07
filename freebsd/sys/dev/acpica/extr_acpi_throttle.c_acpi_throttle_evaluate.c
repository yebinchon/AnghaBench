
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
struct acpi_throttle_softc {int cpu_p_blk_len; int cpu_dev; int cpu_p_blk; int * cpu_p_cnt; int cpu_p_type; int cpu_handle; } ;
typedef int obj ;
typedef int gas ;
struct TYPE_13__ {int DutyOffset; scalar_t__ DutyWidth; } ;
struct TYPE_12__ {int Length; TYPE_2__* Pointer; } ;
struct TYPE_11__ {int BitWidth; int SpaceId; int Address; } ;
struct TYPE_9__ {int Length; scalar_t__ Pointer; } ;
struct TYPE_10__ {TYPE_1__ Buffer; } ;
typedef int ACPI_STATUS ;
typedef TYPE_2__ ACPI_OBJECT ;
typedef TYPE_3__ ACPI_GENERIC_ADDRESS ;
typedef TYPE_4__ ACPI_BUFFER ;


 int ACPI_ADR_SPACE_SYSTEM_IO ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int AcpiEvaluateObject (int ,char*,int *,TYPE_4__*) ;
 TYPE_7__ AcpiGbl_FADT ;
 int CPU_QUIRK_NO_THROTTLE ;
 int ENXIO ;
 int acpi_bus_alloc_gas (int ,int *,int *,TYPE_3__*,int **,int ) ;
 scalar_t__ bootverbose ;
 int cpu_duty_offset ;
 scalar_t__ cpu_duty_width ;
 scalar_t__ device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int memcpy (TYPE_3__*,scalar_t__,int) ;
 int thr_quirks ;
 int thr_rid ;

__attribute__((used)) static int
acpi_throttle_evaluate(struct acpi_throttle_softc *sc)
{
 uint32_t duty_end;
 ACPI_BUFFER buf;
 ACPI_OBJECT obj;
 ACPI_GENERIC_ADDRESS gas;
 ACPI_STATUS status;


 if (device_get_unit(sc->cpu_dev) == 0) {
  cpu_duty_offset = AcpiGbl_FADT.DutyOffset;
  cpu_duty_width = AcpiGbl_FADT.DutyWidth;
 }
 if (cpu_duty_width == 0 || (thr_quirks & CPU_QUIRK_NO_THROTTLE) != 0)
  return (ENXIO);


 duty_end = cpu_duty_offset + cpu_duty_width - 1;
 if (duty_end > 31) {
  device_printf(sc->cpu_dev,
      "CLK_VAL field overflows P_CNT register\n");
  return (ENXIO);
 }
 if (cpu_duty_offset <= 4 && duty_end >= 4) {
  device_printf(sc->cpu_dev,
      "CLK_VAL field overlaps THT_EN bit\n");
  return (ENXIO);
 }
 buf.Pointer = &obj;
 buf.Length = sizeof(obj);
 status = AcpiEvaluateObject(sc->cpu_handle, "_PTC", ((void*)0), &buf);
 if (ACPI_SUCCESS(status)) {
  if (obj.Buffer.Length < sizeof(ACPI_GENERIC_ADDRESS) + 3) {
   device_printf(sc->cpu_dev, "_PTC buffer too small\n");
   return (ENXIO);
  }
  memcpy(&gas, obj.Buffer.Pointer + 3, sizeof(gas));
  acpi_bus_alloc_gas(sc->cpu_dev, &sc->cpu_p_type, &thr_rid,
      &gas, &sc->cpu_p_cnt, 0);
  if (sc->cpu_p_cnt != ((void*)0) && bootverbose) {
   device_printf(sc->cpu_dev, "P_CNT from _PTC %#jx\n",
       gas.Address);
  }
 }


 if (sc->cpu_p_cnt == ((void*)0)) {





  if (sc->cpu_p_blk_len < 4)
   return (ENXIO);
  gas.Address = sc->cpu_p_blk;
  gas.SpaceId = ACPI_ADR_SPACE_SYSTEM_IO;
  gas.BitWidth = 32;
  acpi_bus_alloc_gas(sc->cpu_dev, &sc->cpu_p_type, &thr_rid,
      &gas, &sc->cpu_p_cnt, 0);
  if (sc->cpu_p_cnt != ((void*)0)) {
   if (bootverbose)
    device_printf(sc->cpu_dev,
        "P_CNT from P_BLK %#x\n", sc->cpu_p_blk);
  } else {
   device_printf(sc->cpu_dev, "failed to attach P_CNT\n");
   return (ENXIO);
  }
 }
 thr_rid++;

 return (0);
}
