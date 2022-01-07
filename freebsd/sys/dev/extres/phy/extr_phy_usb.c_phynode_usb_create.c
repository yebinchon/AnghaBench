
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phynode_usb_sc {int std_param; } ;
struct phynode_usb_init_def {int std_param; int phynode_init_def; } ;
struct phynode {int dummy; } ;
typedef int phynode_class_t ;
typedef int device_t ;


 struct phynode* phynode_create (int ,int ,int *) ;
 struct phynode_usb_sc* phynode_get_softc (struct phynode*) ;

struct phynode *
phynode_usb_create(device_t pdev, phynode_class_t phynode_class,
    struct phynode_usb_init_def *def)

{
 struct phynode *phynode;
 struct phynode_usb_sc *sc;

 phynode = phynode_create(pdev, phynode_class, &def->phynode_init_def);
 if (phynode == ((void*)0))
  return (((void*)0));
 sc = phynode_get_softc(phynode);
 sc->std_param = def->std_param;
 return (phynode);
}
