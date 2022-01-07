
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct fdc_data {int fdc_dev; } ;
typedef int device_t ;
struct TYPE_9__ {TYPE_2__* Pointer; int Length; } ;
struct TYPE_7__ {int Pointer; } ;
struct TYPE_8__ {TYPE_1__ Buffer; } ;
typedef TYPE_2__ ACPI_OBJECT ;
typedef TYPE_3__ ACPI_BUFFER ;


 int ACPI_EVALUATE_OBJECT (int ,int ,char*,int *,TYPE_3__*) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FDC_BUFLEN ;
 int ENXIO ;
 int M_NOWAIT ;
 int M_TEMP ;
 int M_ZERO ;
 int device_get_parent (int ) ;
 struct fdc_data* device_get_softc (int ) ;
 int fdc_acpi_probe_children (int ,int ,int ) ;
 int fdc_attach (int ) ;
 int fdc_hints_probe (int ) ;
 int fdc_isa_alloc_resources (int ,struct fdc_data*) ;
 int fdc_release_resources (struct fdc_data*) ;
 int fdc_start_worker (int ) ;
 int free (TYPE_2__*,int ) ;
 TYPE_2__* malloc (int ,int ,int) ;

__attribute__((used)) static int
fdc_acpi_attach(device_t dev)
{
 struct fdc_data *sc;
 ACPI_BUFFER buf;
 ACPI_OBJECT *obj;
 device_t bus;
 int error;


 sc = device_get_softc(dev);
 sc->fdc_dev = dev;


 error = ENXIO;
 buf.Length = ACPI_FDC_BUFLEN;
 buf.Pointer = malloc(buf.Length, M_TEMP, M_NOWAIT | M_ZERO);
 if (buf.Pointer == ((void*)0))
  goto out;


 error = fdc_isa_alloc_resources(dev, sc);
 if (error != 0)
  goto out;


 error = fdc_attach(dev);
 if (error != 0)
  goto out;





 bus = device_get_parent(dev);
 if (ACPI_FAILURE(ACPI_EVALUATE_OBJECT(bus, dev, "_FDE", ((void*)0), &buf))) {
  error = fdc_hints_probe(dev);
  goto out;
 }


 obj = buf.Pointer;
 error = fdc_acpi_probe_children(bus, dev, obj->Buffer.Pointer);

out:
 if (buf.Pointer)
  free(buf.Pointer, M_TEMP);
 if (error != 0)
  fdc_release_resources(sc);
 else
  fdc_start_worker(dev);

 return (error);
}
