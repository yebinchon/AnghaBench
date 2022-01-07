
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int uint32_t ;
struct futex_st0 {int oparg; int* oldval; } ;


 int EFAULT ;
 scalar_t__ cp_slow0 (int ,int,int,int ,struct futex_st0*) ;
 int futex_addl_slow0 ;

int
futex_addl(int oparg, uint32_t *uaddr, int *oldval)
{
 struct futex_st0 st;

 st.oparg = oparg;
 st.oldval = oldval;
 if (cp_slow0((vm_offset_t)uaddr, sizeof(uint32_t), 1,
     futex_addl_slow0, &st) != 0)
  return (-EFAULT);
 return (0);
}
