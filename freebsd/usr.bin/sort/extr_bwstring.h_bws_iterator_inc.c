
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char wchar_t ;
typedef unsigned char* bwstring_iterator ;


 int MB_CUR_MAX ;

__attribute__((used)) static inline bwstring_iterator
bws_iterator_inc(bwstring_iterator iter, size_t pos)
{

 if (MB_CUR_MAX == 1)
  return ((unsigned char *) iter) + pos;
 else
  return ((wchar_t*) iter) + pos;
}
