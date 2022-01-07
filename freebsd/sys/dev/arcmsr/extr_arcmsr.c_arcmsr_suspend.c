
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AdapterControlBlock {int dummy; } ;
typedef int device_t ;


 int arcmsr_disable_allintr (struct AdapterControlBlock*) ;
 int arcmsr_iop_parking (struct AdapterControlBlock*) ;
 struct AdapterControlBlock* device_get_softc (int ) ;

__attribute__((used)) static int arcmsr_suspend(device_t dev)
{
 struct AdapterControlBlock *acb = device_get_softc(dev);


 arcmsr_iop_parking(acb);

 arcmsr_disable_allintr(acb);
 return(0);
}
