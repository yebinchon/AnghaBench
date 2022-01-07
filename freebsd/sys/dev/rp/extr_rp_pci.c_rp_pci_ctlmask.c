
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CONTROLLER_t ;


 unsigned char sPCIGetControllerIntStatus (int *) ;

__attribute__((used)) static unsigned char
rp_pci_ctlmask(CONTROLLER_t *ctlp)
{
 return sPCIGetControllerIntStatus(ctlp);
}
