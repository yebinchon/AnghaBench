
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {double f; } ;
struct oidvalue {TYPE_1__ value; int type; } ;


 int FLOAT ;

__attribute__((used)) static void
oidvalue_set_float(struct oidvalue *ov, double f)
{

 ov->type = FLOAT;
 ov->value.f = f;
}
