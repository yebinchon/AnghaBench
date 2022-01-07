
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unittype {int dummy; } ;


 int cancelunit (struct unittype*) ;
 scalar_t__ reduceunit (struct unittype*) ;
 int sortunit (struct unittype*) ;

__attribute__((used)) static int
completereduce(struct unittype * unit)
{
 if (reduceunit(unit))
  return 1;
 sortunit(unit);
 cancelunit(unit);
 return 0;
}
