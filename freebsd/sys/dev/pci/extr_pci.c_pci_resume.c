
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_RESUME_CHILD (int ,int ) ;
 int M_TEMP ;




 int device_get_children (int ,int **,int*) ;
 int free (int *,int ) ;
 int pci_get_class (int ) ;

int
pci_resume(device_t dev)
{
 device_t child, *devlist;
 int error, i, numdevs;

 if ((error = device_get_children(dev, &devlist, &numdevs)) != 0)
  return (error);




 for (i = 0; i < numdevs; i++) {
  child = devlist[i];
  switch (pci_get_class(child)) {
  case 129:
  case 128:
  case 130:
  case 131:
   BUS_RESUME_CHILD(dev, child);
   break;
  }
 }
 for (i = 0; i < numdevs; i++) {
  child = devlist[i];
  switch (pci_get_class(child)) {
  case 129:
  case 128:
  case 130:
  case 131:
   break;
  default:
   BUS_RESUME_CHILD(dev, child);
  }
 }
 free(devlist, M_TEMP);
 return (0);
}
