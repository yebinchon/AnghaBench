
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
struct nvdimm_dev {scalar_t__ label_area_size; int max_label_xfer; int nv_dev; } ;
typedef int params ;
typedef scalar_t__ off_t ;
typedef int UINT8 ;
struct TYPE_10__ {int Length; int * Pointer; } ;
struct TYPE_8__ {int Length; int * Pointer; } ;
struct TYPE_7__ {int Count; TYPE_3__* Elements; } ;
struct TYPE_9__ {scalar_t__ Type; TYPE_2__ Buffer; TYPE_1__ Package; } ;
typedef int ACPI_STATUS ;
typedef TYPE_3__ ACPI_OBJECT ;
typedef int * ACPI_HANDLE ;
typedef TYPE_4__ ACPI_BUFFER ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 scalar_t__ ACPI_TYPE_BUFFER ;
 scalar_t__ ACPI_TYPE_PACKAGE ;
 int AcpiOsFree (int *) ;
 int ENODEV ;
 int ENXIO ;
 int INTEL_NVDIMM_DSM_GET_LABEL_DATA ;
 int INTEL_NVDIMM_DSM_REV ;
 scalar_t__ MIN (scalar_t__,int ) ;
 int acpi_EvaluateDSM (int *,int *,int ,int ,TYPE_3__*,TYPE_4__*) ;
 int bcopy (int *,int *,scalar_t__) ;
 int intel_nvdimm_dsm_uuid ;
 int * nvdimm_root_get_acpi_handle (int ) ;

__attribute__((used)) static int
read_label_area(struct nvdimm_dev *nv, uint8_t *dest, off_t offset,
    off_t length)
{
 ACPI_BUFFER result;
 ACPI_HANDLE handle;
 ACPI_OBJECT params_pkg, params_buf, *result_buf;
 ACPI_STATUS status;
 uint32_t params[2];
 off_t to_read;
 int error;

 error = 0;
 handle = nvdimm_root_get_acpi_handle(nv->nv_dev);
 if (offset < 0 || length <= 0 ||
     offset + length > nv->label_area_size ||
     handle == ((void*)0))
  return (ENODEV);
 params_pkg.Type = ACPI_TYPE_PACKAGE;
 params_pkg.Package.Count = 1;
 params_pkg.Package.Elements = &params_buf;
 params_buf.Type = ACPI_TYPE_BUFFER;
 params_buf.Buffer.Length = sizeof(params);
 params_buf.Buffer.Pointer = (UINT8 *)params;
 while (length > 0) {
  to_read = MIN(length, nv->max_label_xfer);
  params[0] = offset;
  params[1] = to_read;
  result.Length = ACPI_ALLOCATE_BUFFER;
  result.Pointer = ((void*)0);
  status = acpi_EvaluateDSM(handle,
      (uint8_t *)&intel_nvdimm_dsm_uuid, INTEL_NVDIMM_DSM_REV,
      INTEL_NVDIMM_DSM_GET_LABEL_DATA, &params_pkg, &result);
  if (ACPI_FAILURE(status) ||
      result.Length < sizeof(ACPI_OBJECT) ||
      result.Pointer == ((void*)0)) {
   error = ENXIO;
   break;
  }
  result_buf = (ACPI_OBJECT *)result.Pointer;
  if (result_buf->Type != ACPI_TYPE_BUFFER ||
      result_buf->Buffer.Pointer == ((void*)0) ||
      result_buf->Buffer.Length != 4 + to_read ||
      ((uint16_t *)result_buf->Buffer.Pointer)[0] != 0) {
   error = ENXIO;
   break;
  }
  bcopy(result_buf->Buffer.Pointer + 4, dest, to_read);
  dest += to_read;
  offset += to_read;
  length -= to_read;
  if (result.Pointer != ((void*)0)) {
   AcpiOsFree(result.Pointer);
   result.Pointer = ((void*)0);
  }
 }
 if (result.Pointer != ((void*)0))
  AcpiOsFree(result.Pointer);
 return (error);
}
