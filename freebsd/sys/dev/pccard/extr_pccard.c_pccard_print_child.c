
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct resource_list {int dummy; } ;
struct pccard_ivar {TYPE_2__* pf; struct resource_list resources; } ;
typedef int device_t ;
struct TYPE_4__ {int number; TYPE_1__* cfe; } ;
struct TYPE_3__ {int number; } ;


 struct pccard_ivar* PCCARD_IVAR (int ) ;
 int PCCARD_NDRQ ;
 int PCCARD_NIRQ ;
 int PCCARD_NMEM ;
 int PCCARD_NPORT ;
 int SYS_RES_DRQ ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 scalar_t__ bus_print_child_footer (int ,int ) ;
 scalar_t__ bus_print_child_header (int ,int ) ;
 int pccard_print_resources (struct resource_list*,char*,int ,int ,char*) ;
 scalar_t__ printf (char*,...) ;

__attribute__((used)) static int
pccard_print_child(device_t dev, device_t child)
{
 struct pccard_ivar *devi = PCCARD_IVAR(child);
 struct resource_list *rl = &devi->resources;
 int retval = 0;

 retval += bus_print_child_header(dev, child);
 retval += printf(" at");

 if (devi != ((void*)0)) {
  pccard_print_resources(rl, "port", SYS_RES_IOPORT,
      PCCARD_NPORT, "%#lx");
  pccard_print_resources(rl, "iomem", SYS_RES_MEMORY,
      PCCARD_NMEM, "%#lx");
  pccard_print_resources(rl, "irq", SYS_RES_IRQ, PCCARD_NIRQ,
      "%ld");
  pccard_print_resources(rl, "drq", SYS_RES_DRQ, PCCARD_NDRQ,
      "%ld");
  retval += printf(" function %d config %d", devi->pf->number,
      devi->pf->cfe->number);
 }

 retval += bus_print_child_footer(dev, child);

 return (retval);
}
