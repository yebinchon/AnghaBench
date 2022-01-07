
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
struct vm86frame {int vmf_sp; int vmf_ss; } ;


 int MAKE_ADDR (int ,int) ;
 int vm86_fuword16 (int ) ;

__attribute__((used)) static __inline u_short
POP(struct vm86frame *vmf)
{
 u_short x = vm86_fuword16(MAKE_ADDR(vmf->vmf_ss, vmf->vmf_sp));

 vmf->vmf_sp += 2;
 return (x);
}
