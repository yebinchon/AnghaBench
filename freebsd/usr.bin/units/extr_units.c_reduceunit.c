
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unittype {int dummy; } ;


 int reduceproduct (struct unittype*,int) ;

__attribute__((used)) static int
reduceunit(struct unittype * theunit)
{
 int ret;

 ret = 1;
 while (ret & 1) {
  ret = reduceproduct(theunit, 0) | reduceproduct(theunit, 1);
  if (ret & 4)
   return 1;
 }
 return 0;
}
