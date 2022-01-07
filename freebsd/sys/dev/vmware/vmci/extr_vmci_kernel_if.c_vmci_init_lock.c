
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vmci_lock ;


 int MTX_DEF ;
 int MTX_NOWITNESS ;
 int VMCI_SUCCESS ;
 int mtx_init (int *,char*,int *,int) ;

int
vmci_init_lock(vmci_lock *lock, char *name)
{

 mtx_init(lock, name, ((void*)0), MTX_DEF | MTX_NOWITNESS);
 return (VMCI_SUCCESS);
}
