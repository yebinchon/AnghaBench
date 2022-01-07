
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tuple_info {unsigned char code; scalar_t__ name; } ;


 struct tuple_info* tuple_info ;

__attribute__((used)) static struct tuple_info *
get_tuple_info(unsigned char code)
{
 struct tuple_info *tp;

 for (tp = tuple_info; tp->name; tp++)
  if (tp->code == code)
   return (tp);
 return (0);
}
