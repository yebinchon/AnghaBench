
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ wchar_t ;
struct TYPE_2__ {unsigned char* cstr; int wstr; } ;
struct bwstring {TYPE_1__ data; } ;


 int MB_CUR_MAX ;
 int SIZEOF_WCHAR_STRING (size_t) ;
 struct bwstring* bwsalloc (size_t) ;
 int memcpy (int ,scalar_t__ const*,int ) ;

struct bwstring *
bwssbdup(const wchar_t *str, size_t len)
{

 if (str == ((void*)0))
  return ((len == 0) ? bwsalloc(0) : ((void*)0));
 else {
  struct bwstring *ret;

  ret = bwsalloc(len);

  if (MB_CUR_MAX == 1)
   for (size_t i = 0; i < len; ++i)
    ret->data.cstr[i] = (unsigned char) str[i];
  else
   memcpy(ret->data.wstr, str, SIZEOF_WCHAR_STRING(len));

  return (ret);
 }
}
