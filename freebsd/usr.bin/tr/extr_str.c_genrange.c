
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_4__ {char* str; int lastch; int cnt; int* set; int state; } ;
typedef TYPE_1__ STR ;


 int EILSEQ ;
 int MB_CUR_MAX ;
 int MB_LEN_MAX ;
 int NCHARS_SB ;
 int OOBCH ;
 int RANGE ;
 int SET ;
 int backslash (TYPE_1__*,int*) ;
 scalar_t__ charcoll (void const*,void const*) ;
 int err (int,char*) ;
 int errc (int,int ,int *) ;
 int* malloc (int) ;
 size_t mbrtowc (int*,char*,int ,int *) ;
 int mergesort (int*,int,int,scalar_t__ (*) (void const*,void const*)) ;

__attribute__((used)) static int
genrange(STR *s, int was_octal)
{
 int stopval, octal;
 char *savestart;
 int n, cnt, *p;
 size_t clen;
 wchar_t wc;

 octal = 0;
 savestart = s->str;
 if (*++s->str == '\\')
  stopval = backslash(s, &octal);
 else {
  clen = mbrtowc(&wc, s->str, MB_LEN_MAX, ((void*)0));
  if (clen == (size_t)-1 || clen == (size_t)-2)
   errc(1, EILSEQ, ((void*)0));
  stopval = wc;
  s->str += clen;
 }




 if (octal || was_octal || MB_CUR_MAX > 1) {
  if (stopval < s->lastch) {
   s->str = savestart;
   return (0);
  }
  s->cnt = stopval - s->lastch + 1;
  s->state = RANGE;
  --s->lastch;
  return (1);
 }
 if (charcoll((const void *)&stopval, (const void *)&(s->lastch)) < 0) {
  s->str = savestart;
  return (0);
 }
 if ((s->set = p = malloc((NCHARS_SB + 1) * sizeof(int))) == ((void*)0))
  err(1, "genrange() malloc");
 for (cnt = 0; cnt < NCHARS_SB; cnt++)
  if (charcoll((const void *)&cnt, (const void *)&(s->lastch)) >= 0 &&
      charcoll((const void *)&cnt, (const void *)&stopval) <= 0)
   *p++ = cnt;
 *p = OOBCH;
 n = p - s->set;

 s->cnt = 0;
 s->state = SET;
 if (n > 1)
  mergesort(s->set, n, sizeof(*(s->set)), charcoll);
 return (1);
}
