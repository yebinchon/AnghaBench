
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {double s; double u; double f; } ;
struct oidvalue {int type; TYPE_1__ value; } ;





 int assert (int ) ;

__attribute__((used)) static double
oidvalue_get_float(const struct oidvalue *ov)
{

 switch (ov->type) {
 case 129:
  return (ov->value.s);
 case 128:
  return (ov->value.u);
 case 130:
  return (ov->value.f);
 default:
  assert(0 && "Unknown value type");
 }
}
