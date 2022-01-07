
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct attr_check {TYPE_1__* items; } ;
struct TYPE_2__ {int value; } ;


 scalar_t__ ATTR_TRUE (int ) ;

__attribute__((used)) static int check_attr_export_subst(const struct attr_check *check)
{
 return check && ATTR_TRUE(check->items[1].value);
}
