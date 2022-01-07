
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char wchar_t ;
typedef scalar_t__ bwstring_iterator ;


 int MB_CUR_MAX ;

__attribute__((used)) static inline wchar_t
bws_get_iter_value(bwstring_iterator iter)
{

 if (MB_CUR_MAX == 1)
  return *((unsigned char *) iter);
 else
  return *((wchar_t*) iter);
}
