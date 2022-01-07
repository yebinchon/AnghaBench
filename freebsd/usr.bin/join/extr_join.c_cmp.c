
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u_long ;
struct TYPE_4__ {size_t fieldcnt; int * fields; } ;
typedef TYPE_1__ LINE ;


 int mbscoll (int ,int ) ;

__attribute__((used)) static int
cmp(LINE *lp1, u_long fieldno1, LINE *lp2, u_long fieldno2)
{
 if (lp1->fieldcnt <= fieldno1)
  return (lp2->fieldcnt <= fieldno2 ? 0 : 1);
 if (lp2->fieldcnt <= fieldno2)
  return (-1);
 return (mbscoll(lp1->fields[fieldno1], lp2->fields[fieldno2]));
}
