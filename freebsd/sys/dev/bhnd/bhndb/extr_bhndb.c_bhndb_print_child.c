
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list {int dummy; } ;
struct bhndb_softc {int dummy; } ;
typedef int device_t ;


 struct resource_list* BUS_GET_RESOURCE_LIST (int ,int ) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 scalar_t__ bus_print_child_domain (int ,int ) ;
 scalar_t__ bus_print_child_footer (int ,int ) ;
 scalar_t__ bus_print_child_header (int ,int ) ;
 struct bhndb_softc* device_get_softc (int ) ;
 scalar_t__ resource_list_print_type (struct resource_list*,char*,int ,char*) ;

__attribute__((used)) static int
bhndb_print_child(device_t dev, device_t child)
{
 struct bhndb_softc *sc;
 struct resource_list *rl;
 int retval = 0;

 sc = device_get_softc(dev);

 retval += bus_print_child_header(dev, child);

 rl = BUS_GET_RESOURCE_LIST(dev, child);
 if (rl != ((void*)0)) {
  retval += resource_list_print_type(rl, "mem", SYS_RES_MEMORY,
      "%#jx");
  retval += resource_list_print_type(rl, "irq", SYS_RES_IRQ,
      "%jd");
 }

 retval += bus_print_child_domain(dev, child);
 retval += bus_print_child_footer(dev, child);

 return (retval);
}
