
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdev {int dummy; } ;
typedef int module_t ;
typedef int * eventhandler_tag ;


 int EVENTHANDLER_DEREGISTER (int ,int *) ;
 int * EVENTHANDLER_REGISTER (int ,int ,int *,int) ;
 int GID_WHEEL ;


 int STAILQ_INIT (int *) ;
 int UID_ROOT ;
 int destroy_dev (struct cdev*) ;
 int dev_lookup ;
 struct cdev* make_dev (int *,int ,int ,int ,int,char*) ;
 int pci_devq ;
 int pci_generation ;
 int pci_load_vendor_data () ;
 int pci_lookup ;
 int pcicdev ;

__attribute__((used)) static int
pci_modevent(module_t mod, int what, void *arg)
{
 static struct cdev *pci_cdev;
 static eventhandler_tag tag;

 switch (what) {
 case 129:
  STAILQ_INIT(&pci_devq);
  pci_generation = 0;
  pci_cdev = make_dev(&pcicdev, 0, UID_ROOT, GID_WHEEL, 0644,
      "pci");
  pci_load_vendor_data();
  tag = EVENTHANDLER_REGISTER(dev_lookup, pci_lookup, ((void*)0),
      1000);
  break;

 case 128:
  if (tag != ((void*)0))
   EVENTHANDLER_DEREGISTER(dev_lookup, tag);
  destroy_dev(pci_cdev);
  break;
 }

 return (0);
}
