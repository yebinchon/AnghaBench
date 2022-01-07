
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct fdc_walk_ctx {int index; scalar_t__* fd_present; int dev; int acpi_dev; } ;
typedef int * device_t ;
struct TYPE_10__ {int * Pointer; int Length; } ;
struct TYPE_8__ {int Value; } ;
struct TYPE_7__ {TYPE_3__* Elements; } ;
struct TYPE_9__ {scalar_t__ Type; TYPE_2__ Integer; TYPE_1__ Package; } ;
typedef scalar_t__ ACPI_STATUS ;
typedef TYPE_3__ ACPI_OBJECT ;
typedef int ACPI_HANDLE ;
typedef TYPE_4__ ACPI_BUFFER ;


 scalar_t__ ACPI_EVALUATE_OBJECT (int ,int *,char*,int *,TYPE_4__*) ;
 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 int ACPI_FDC_BUFLEN ;
 scalar_t__ ACPI_FD_PRESENT ;
 int ACPI_PKG_VALID (TYPE_3__*,int) ;
 scalar_t__ ACPI_TYPE_INTEGER ;
 scalar_t__ AE_NOT_FOUND ;
 scalar_t__ AE_OK ;
 int M_NOWAIT ;
 int M_TEMP ;
 int M_ZERO ;
 int device_printf (int ,char*,...) ;
 int * fdc_add_child (int ,char*,size_t) ;
 int fdc_set_fdtype (int *,int ) ;
 int free (int *,int ) ;
 int * malloc (int ,int ,int) ;

__attribute__((used)) static ACPI_STATUS
fdc_acpi_probe_child(ACPI_HANDLE h, device_t *dev, int level, void *arg)
{
 struct fdc_walk_ctx *ctx;
 device_t child, old_child;
 ACPI_BUFFER buf;
 ACPI_OBJECT *pkg, *obj;
 ACPI_STATUS status;

 ctx = (struct fdc_walk_ctx *)arg;
 buf.Pointer = ((void*)0);






 if (ctx->index > 3)
  return (AE_OK);


 if (ctx->fd_present[ctx->index] != ACPI_FD_PRESENT)
  goto out;


 child = fdc_add_child(ctx->dev, "fd", ctx->index);
 if (child == ((void*)0))
  goto out;
 old_child = *dev;
 *dev = child;


 buf.Length = ACPI_FDC_BUFLEN;
 buf.Pointer = malloc(buf.Length, M_TEMP, M_NOWAIT | M_ZERO);
 if (buf.Pointer == ((void*)0))
  goto out;







 status = ACPI_EVALUATE_OBJECT(ctx->acpi_dev, old_child, "_FDI", ((void*)0),
     &buf);
 if (ACPI_FAILURE(status)) {
  if (status != AE_NOT_FOUND)
   device_printf(ctx->dev, "_FDI failed - %#x\n", status);
  goto out;
 }
 pkg = (ACPI_OBJECT *)buf.Pointer;
 if (!ACPI_PKG_VALID(pkg, 16)) {
  device_printf(ctx->dev, "invalid _FDI package\n");
  goto out;
 }
 obj = &pkg->Package.Elements[1];
 if (obj == ((void*)0) || obj->Type != ACPI_TYPE_INTEGER) {
  device_printf(ctx->dev, "invalid type object in _FDI\n");
  goto out;
 }
 fdc_set_fdtype(child, obj->Integer.Value);

out:
 ctx->index++;
 if (buf.Pointer)
  free(buf.Pointer, M_TEMP);
 return (AE_OK);
}
