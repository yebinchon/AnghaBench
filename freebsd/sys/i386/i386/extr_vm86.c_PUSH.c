
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
struct vm86frame {int vmf_sp; int vmf_ss; } ;


 int MAKE_ADDR (int ,int) ;
 int vm86_suword16 (int ,int ) ;

__attribute__((used)) static __inline void
PUSH(u_short x, struct vm86frame *vmf)
{
 vmf->vmf_sp -= 2;
 vm86_suword16(MAKE_ADDR(vmf->vmf_ss, vmf->vmf_sp), x);
}
