
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* cstr; char* wstr; } ;
struct bwstring {size_t len; TYPE_1__ data; } ;


 int MB_CUR_MAX ;
 size_t SIZEOF_WCHAR_STRING (size_t) ;
 int memcpy (char*,char*,size_t) ;

struct bwstring *
bwsncpy(struct bwstring *dst, const struct bwstring *src, size_t size)
{
 size_t nums = src->len;

 if (nums > dst->len)
  nums = dst->len;
 if (nums > size)
  nums = size;
 dst->len = nums;

 if (MB_CUR_MAX == 1) {
  memcpy(dst->data.cstr, src->data.cstr, nums);
  dst->data.cstr[dst->len] = '\0';
 } else {
  memcpy(dst->data.wstr, src->data.wstr,
      SIZEOF_WCHAR_STRING(nums + 1));
  dst->data.wstr[dst->len] = L'\0';
 }

 return (dst);
}
