
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdc_walk_ctx {scalar_t__* fd_present; void* acpi_dev; void* dev; scalar_t__ index; } ;
typedef void* device_t ;
typedef int devclass_t ;


 int ACPI_FDC_MAXDEVS ;
 scalar_t__ ACPI_FD_PRESENT ;
 int ACPI_SCAN_CHILDREN (void*,void*,int,int ,struct fdc_walk_ctx*) ;
 int ENOMEM ;
 int M_NOWAIT ;
 int M_TEMP ;
 int bcopy (void*,scalar_t__*,int) ;
 int bus_generic_attach (void*) ;
 int devclass_find (char*) ;
 int * devclass_get_device (int ,int) ;
 int device_printf (void*,char*) ;
 int fdc_acpi_probe_child ;
 int * fdc_add_child (void*,char*,int) ;
 int free (struct fdc_walk_ctx*,int ) ;
 struct fdc_walk_ctx* malloc (int,int ,int ) ;

__attribute__((used)) static int
fdc_acpi_probe_children(device_t bus, device_t dev, void *fde)
{
 struct fdc_walk_ctx *ctx;
 devclass_t fd_dc;
 int i;


 ctx = malloc(sizeof(struct fdc_walk_ctx), M_TEMP, M_NOWAIT);
 if (ctx == ((void*)0)) {
  device_printf(dev, "no memory for walking children\n");
  return (ENOMEM);
 }
 bcopy(fde, ctx->fd_present, sizeof(ctx->fd_present));
 ctx->index = 0;
 ctx->dev = dev;
 ctx->acpi_dev = bus;
 ACPI_SCAN_CHILDREN(ctx->acpi_dev, dev, 1, fdc_acpi_probe_child,
     ctx);


 fd_dc = devclass_find("fd");
 for (i = 0; i < ACPI_FDC_MAXDEVS; i++)
  if (ctx->fd_present[i] == ACPI_FD_PRESENT &&
      devclass_get_device(fd_dc, i) == ((void*)0)) {
   if (fdc_add_child(dev, "fd", i) == ((void*)0))
    device_printf(dev, "fd add failed\n");
  }
 free(ctx, M_TEMP);


 return (bus_generic_attach(dev));
}
