
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const listcoll_t ;
listcoll_t
get_list_call_func(size_t offset)
{
 static const listcoll_t lsarray[] = { 148, 147,
     136, 134, 133, 132,
     131, 130, 129, 128,
     146, 145, 144, 143,
     142, 141, 140, 139,
     138, 137, 135 };

 if (offset <= 20)
  return (lsarray[offset]);

 return (148);
}
