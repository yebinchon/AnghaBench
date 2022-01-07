
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isa_ranges {int dummy; } ;


 int ISA_RANGE_PS (struct isa_ranges*) ;


 int SYS_RES_IOPORT ;
 int SYS_RES_MEMORY ;
 int panic (char*,int) ;

int
ofw_isa_range_restype(struct isa_ranges *range)
{
 int ps = ISA_RANGE_PS(range);

 switch (ps) {
 case 129:
  return (SYS_RES_IOPORT);
 case 128:
  return (SYS_RES_MEMORY);
 default:
  panic("ofw_isa_range_restype: illegal space %x", ps);
 }

}
