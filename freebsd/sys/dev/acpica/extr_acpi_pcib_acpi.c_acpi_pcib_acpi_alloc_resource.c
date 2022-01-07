
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct resource {int dummy; } ;
struct acpi_hpcib_softc {int ap_host_res; int ap_segment; } ;
typedef int rman_res_t ;
typedef int device_t ;


 int PCI_RES_BUS ;
 struct resource* bus_generic_alloc_resource (int ,int ,int,int*,int,int,int,int ) ;
 struct acpi_hpcib_softc* device_get_softc (int ) ;
 int hostb_alloc_start (int,int,int,int) ;
 struct resource* pci_domain_alloc_bus (int ,int ,int*,int,int,int,int ) ;
 struct resource* pcib_host_res_alloc (int *,int ,int,int*,int,int,int,int ) ;

struct resource *
acpi_pcib_acpi_alloc_resource(device_t dev, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{






    start = hostb_alloc_start(type, start, end, count);
    return (bus_generic_alloc_resource(dev, child, type, rid, start, end,
 count, flags));

}
