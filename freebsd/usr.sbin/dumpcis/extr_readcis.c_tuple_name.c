
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tuple_info {char const* name; } ;


 struct tuple_info* get_tuple_info (unsigned char) ;

const char *
tuple_name(unsigned char code)
{
 struct tuple_info *tp;

 tp = get_tuple_info(code);
 if (tp)
  return (tp->name);
 return ("Unknown");
}
