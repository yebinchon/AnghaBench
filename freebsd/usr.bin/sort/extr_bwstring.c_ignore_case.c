
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_2__ {unsigned char* cstr; int * wstr; } ;
struct bwstring {int len; TYPE_1__ data; } ;


 int MB_CUR_MAX ;
 unsigned char toupper (unsigned char) ;
 int towupper (int ) ;

struct bwstring *
ignore_case(struct bwstring *str)
{

 if (MB_CUR_MAX == 1) {
  unsigned char *end, *s;

  s = str->data.cstr;
  end = s + str->len;

  while (s < end) {
   *s = toupper(*s);
   ++s;
  }
 } else {
  wchar_t *end, *s;

  s = str->data.wstr;
  end = s + str->len;

  while (s < end) {
   *s = towupper(*s);
   ++s;
  }
 }
 return (str);
}
