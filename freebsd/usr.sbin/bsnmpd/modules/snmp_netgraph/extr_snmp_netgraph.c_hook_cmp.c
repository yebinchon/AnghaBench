
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linkinfo {int ourhook; } ;


 int strcmp (int ,int ) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static int
hook_cmp(const void *p1, const void *p2)
{
 const struct linkinfo *i1 = p1;
 const struct linkinfo *i2 = p2;

 if (strlen(i1->ourhook) < strlen(i2->ourhook))
  return (-1);
 if (strlen(i1->ourhook) > strlen(i2->ourhook))
  return (+1);
 return (strcmp(i1->ourhook, i2->ourhook));
}
