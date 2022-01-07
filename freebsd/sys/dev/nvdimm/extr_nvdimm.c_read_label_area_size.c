
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef void* uint32_t ;
struct nvdimm_dev {void* max_label_xfer; void* label_area_size; int nv_dev; } ;
struct TYPE_8__ {int Length; TYPE_2__* Pointer; } ;
struct TYPE_6__ {int Length; scalar_t__ Pointer; } ;
struct TYPE_7__ {scalar_t__ Type; TYPE_1__ Buffer; } ;
typedef int ACPI_STATUS ;
typedef TYPE_2__ ACPI_OBJECT ;
typedef int * ACPI_HANDLE ;
typedef TYPE_3__ ACPI_BUFFER ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 scalar_t__ ACPI_TYPE_BUFFER ;
 int AcpiOsFree (TYPE_2__*) ;
 int ENODEV ;
 int ENXIO ;
 int INTEL_NVDIMM_DSM_GET_LABEL_SIZE ;
 int INTEL_NVDIMM_DSM_REV ;
 int acpi_EvaluateDSM (int *,int *,int ,int ,int *,TYPE_3__*) ;
 int intel_nvdimm_dsm_uuid ;
 int * nvdimm_root_get_acpi_handle (int ) ;

__attribute__((used)) static int
read_label_area_size(struct nvdimm_dev *nv)
{
 ACPI_OBJECT *result_buffer;
 ACPI_HANDLE handle;
 ACPI_STATUS status;
 ACPI_BUFFER result;
 uint32_t *out;
 int error;

 handle = nvdimm_root_get_acpi_handle(nv->nv_dev);
 if (handle == ((void*)0))
  return (ENODEV);
 result.Length = ACPI_ALLOCATE_BUFFER;
 result.Pointer = ((void*)0);
 status = acpi_EvaluateDSM(handle, (uint8_t *)&intel_nvdimm_dsm_uuid,
     INTEL_NVDIMM_DSM_REV, INTEL_NVDIMM_DSM_GET_LABEL_SIZE, ((void*)0),
     &result);
 error = ENXIO;
 if (ACPI_SUCCESS(status) && result.Pointer != ((void*)0) &&
     result.Length >= sizeof(ACPI_OBJECT)) {
  result_buffer = result.Pointer;
  if (result_buffer->Type == ACPI_TYPE_BUFFER &&
      result_buffer->Buffer.Length >= 12) {
   out = (uint32_t *)result_buffer->Buffer.Pointer;
   nv->label_area_size = out[1];
   nv->max_label_xfer = out[2];
   error = 0;
  }
 }
 if (result.Pointer != ((void*)0))
  AcpiOsFree(result.Pointer);
 return (error);
}
