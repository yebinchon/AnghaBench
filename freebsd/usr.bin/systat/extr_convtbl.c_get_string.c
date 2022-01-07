
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct convtbl {char const* str; } ;


 struct convtbl* get_tbl_ptr (int const,int const) ;

const char *
get_string(const uintmax_t size, const int scale)
{
 struct convtbl *tp;

 tp = get_tbl_ptr(size, scale);
 return (tp->str);
}
