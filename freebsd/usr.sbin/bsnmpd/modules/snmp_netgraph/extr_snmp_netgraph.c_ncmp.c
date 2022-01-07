
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nodeinfo {scalar_t__ id; } ;



__attribute__((used)) static int
ncmp(const void *p1, const void *p2)
{
 const struct nodeinfo *i1 = p1;
 const struct nodeinfo *i2 = p2;

 if (i1->id < i2->id)
  return (-1);
 if (i1->id > i2->id)
  return (+1);
 return (0);
}
