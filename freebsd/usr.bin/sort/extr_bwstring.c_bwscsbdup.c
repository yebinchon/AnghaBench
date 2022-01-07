
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char* wstr; int cstr; } ;
struct bwstring {size_t len; TYPE_1__ data; } ;
typedef int mbstate_t ;
typedef int mbs ;


 int MB_CUR_MAX ;
 struct bwstring* bwsalloc (size_t) ;
 int err (int,char*) ;
 size_t mbrlen (char const*,size_t,int *) ;
 size_t mbrtowc (unsigned char*,char const*,size_t,int *) ;
 int memcpy (int ,unsigned char const*,size_t) ;
 int memset (int *,int ,int) ;

struct bwstring *
bwscsbdup(const unsigned char *str, size_t len)
{
 struct bwstring *ret;

 ret = bwsalloc(len);

 if (str) {
  if (MB_CUR_MAX == 1)
   memcpy(ret->data.cstr, str, len);
  else {
   mbstate_t mbs;
   const char *s;
   size_t charlen, chars, cptr;

   chars = 0;
   cptr = 0;
   s = (const char *) str;

   memset(&mbs, 0, sizeof(mbs));

   while (cptr < len) {
    size_t n = MB_CUR_MAX;

    if (n > len - cptr)
     n = len - cptr;
    charlen = mbrlen(s + cptr, n, &mbs);
    switch (charlen) {
    case 0:

    case (size_t) -1:

    case (size_t) -2:
     ret->data.wstr[chars++] =
         (unsigned char) s[cptr];
     ++cptr;
     break;
    default:
     n = mbrtowc(ret->data.wstr + (chars++),
         s + cptr, charlen, &mbs);
     if ((n == (size_t)-1) || (n == (size_t)-2))

      err(2, "mbrtowc error");
     cptr += charlen;
    }
   }

   ret->len = chars;
   ret->data.wstr[ret->len] = L'\0';
  }
 }
 return (ret);
}
