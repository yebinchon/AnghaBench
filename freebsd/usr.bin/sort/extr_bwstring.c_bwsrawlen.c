
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwstring {size_t len; } ;


 int MB_CUR_MAX ;
 size_t SIZEOF_WCHAR_STRING (size_t) ;

size_t bwsrawlen(const struct bwstring *bws)
{

 return ((MB_CUR_MAX == 1) ? bws->len : SIZEOF_WCHAR_STRING(bws->len));
}
