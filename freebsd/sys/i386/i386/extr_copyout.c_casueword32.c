
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef void* uint32_t ;
struct casueword_arg0 {int res; void* oldval; void* newval; } ;
typedef int int32_t ;


 int casueword_slow0 ;
 int cp_slow0 (int ,int,int,int ,struct casueword_arg0*) ;

int
casueword32(volatile uint32_t *base, uint32_t oldval, uint32_t *oldvalp,
    uint32_t newval)
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
