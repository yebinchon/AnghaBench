
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef void* u_long ;
struct casueword_arg0 {int res; void* oldval; void* newval; } ;
typedef int int32_t ;


 int casueword_slow0 ;
 int cp_slow0 (int ,int,int,int ,struct casueword_arg0*) ;

int
casueword(volatile u_long *base, u_long oldval, u_long *oldvalp, u_long newval)
{
 struct casueword_arg0 ca;
 int res;

 ca.oldval = oldval;
 ca.newval = newval;
 res = cp_slow0((vm_offset_t)base, sizeof(int32_t), 1,
     casueword_slow0, &ca);
 if (res == 0) {
  *oldvalp = ca.oldval;
  return (ca.res);
 }
 return (-1);
}
