
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wstr; int cstr; } ;
struct bwstring {int len; TYPE_1__ data; } ;


 int MB_CUR_MAX ;
 int SIZEOF_WCHAR_STRING (int ) ;
 struct bwstring* bwsalloc (int ) ;
 int memcpy (int ,int ,int ) ;

struct bwstring *
bwsdup(const struct bwstring *s)
{

 if (s == ((void*)0))
  return (((void*)0));
 else {
  struct bwstring *ret = bwsalloc(s->len);

  if (MB_CUR_MAX == 1)
   memcpy(ret->data.cstr, s->data.cstr, (s->len));
  else
   memcpy(ret->data.wstr, s->data.wstr,
       SIZEOF_WCHAR_STRING(s->len));

  return (ret);
 }
}
