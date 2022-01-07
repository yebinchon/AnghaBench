
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uintmax_t ;
struct convtbl {double mul; double scale; } ;


 struct convtbl* get_tbl_ptr (scalar_t__ const,int const) ;

double
convert(const uintmax_t size, const int scale)
{
 struct convtbl *tp;

 tp = get_tbl_ptr(size, scale);
 return ((double)size * tp->mul / tp->scale);

}
