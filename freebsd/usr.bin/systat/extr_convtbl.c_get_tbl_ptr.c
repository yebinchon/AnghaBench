
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct convtbl {int dummy; } ;


 int MEGABYTE ;
 int const SC_AUTO ;
 int SC_BIT ;
 int SC_KILOBYTE ;
 struct convtbl* convtbl ;

__attribute__((used)) static
struct convtbl *
get_tbl_ptr(const uintmax_t size, const int scale)
{
 uintmax_t tmp;
 int idx;


 idx = scale < SC_AUTO ? scale : SC_AUTO;

 if (idx == SC_AUTO)






  for (tmp = size, idx = SC_KILOBYTE;
       tmp >= MEGABYTE && idx < SC_BIT - 1;
       tmp >>= 10, idx++);

 return (&convtbl[idx]);
}
