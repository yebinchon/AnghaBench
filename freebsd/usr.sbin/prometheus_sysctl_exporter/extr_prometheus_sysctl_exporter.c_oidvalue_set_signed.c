
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s; } ;
struct oidvalue {TYPE_1__ value; int type; } ;
typedef int intmax_t ;


 int SIGNED ;

__attribute__((used)) static void
oidvalue_set_signed(struct oidvalue *ov, intmax_t s)
{

 ov->type = SIGNED;
 ov->value.s = s;
}
