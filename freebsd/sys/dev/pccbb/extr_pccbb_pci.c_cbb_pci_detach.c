
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cbb_softc {int bus; } ;
typedef int device_t ;


 int cbb_detach (int ) ;
 struct cbb_softc* device_get_softc (int ) ;
 int pcib_free_secbus (int ,int *) ;

__attribute__((used)) static int
cbb_pci_detach(device_t brdev)
{



 int error;

 error = cbb_detach(brdev);




 return (error);
}
