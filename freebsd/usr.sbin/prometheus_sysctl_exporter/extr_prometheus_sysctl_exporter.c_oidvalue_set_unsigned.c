
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uintmax_t ;
struct TYPE_2__ {int u; } ;
struct oidvalue {TYPE_1__ value; int type; } ;


 int UNSIGNED ;

__attribute__((used)) static void
oidvalue_set_unsigned(struct oidvalue *ov, uintmax_t u)
{

 ov->type = UNSIGNED;
 ov->value.u = u;
}
