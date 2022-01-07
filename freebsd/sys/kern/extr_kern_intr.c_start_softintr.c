
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INTR_MPSAFE ;
 int SWI_VM ;
 int panic (char*) ;
 scalar_t__ swi_add (int *,char*,int ,int *,int ,int ,int *) ;
 int swi_vm ;
 int vm_ih ;

__attribute__((used)) static void
start_softintr(void *dummy)
{

 if (swi_add(((void*)0), "vm", swi_vm, ((void*)0), SWI_VM, INTR_MPSAFE, &vm_ih))
  panic("died while creating vm swi ithread");
}
