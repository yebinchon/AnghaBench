
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_addr_wrap {int type; } ;




 int pf_tbladdr_copyout (struct pf_addr_wrap*) ;
 int pfi_dynaddr_copyout (struct pf_addr_wrap*) ;

__attribute__((used)) static void
pf_addr_copyout(struct pf_addr_wrap *addr)
{

 switch (addr->type) {
 case 129:
  pfi_dynaddr_copyout(addr);
  break;
 case 128:
  pf_tbladdr_copyout(addr);
  break;
 }
}
