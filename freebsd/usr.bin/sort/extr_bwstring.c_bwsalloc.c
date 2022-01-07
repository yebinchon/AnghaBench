
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* cstr; int* wstr; } ;
struct bwstring {size_t len; TYPE_1__ data; } ;


 int MB_CUR_MAX ;
 int SIZEOF_WCHAR_STRING (size_t) ;
 struct bwstring* sort_malloc (int) ;

struct bwstring *
bwsalloc(size_t sz)
{
 struct bwstring *ret;

 if (MB_CUR_MAX == 1)
  ret = sort_malloc(sizeof(struct bwstring) + 1 + sz);
 else
  ret = sort_malloc(sizeof(struct bwstring) +
      SIZEOF_WCHAR_STRING(sz + 1));
 ret->len = sz;

 if (MB_CUR_MAX == 1)
  ret->data.cstr[ret->len] = '\0';
 else
  ret->data.wstr[ret->len] = L'\0';

 return (ret);
}
