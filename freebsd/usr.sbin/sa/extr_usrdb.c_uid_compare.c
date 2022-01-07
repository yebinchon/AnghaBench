
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uid_t ;
struct TYPE_4__ {int data; } ;
typedef TYPE_1__ DBT ;


 int bcopy (int ,scalar_t__*,int) ;

__attribute__((used)) static int
uid_compare(const DBT *k1, const DBT *k2)
{
 uid_t d1, d2;

 bcopy(k1->data, &d1, sizeof d1);
 bcopy(k2->data, &d2, sizeof d2);

 if (d1 < d2)
  return -1;
 else if (d1 == d2)
  return 0;
 else
  return 1;
}
