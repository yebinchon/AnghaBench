
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int EILSEQ ;
 int MB_LEN_MAX ;
 int dflag ;
 int err (int,int *) ;
 int errc (int,int ,int *) ;
 scalar_t__ fflag ;
 scalar_t__ iswalnum (int) ;
 int* malloc (int) ;
 size_t mbrtowc (int*,char const*,int ,int *) ;
 int strlen (char const*) ;
 int towlower (int) ;
 int* wcschr (int*,int) ;

__attribute__((used)) static wchar_t *
prepkey(const char *string, wchar_t termchar)
{
 const char *readp;
 wchar_t *key, *writep;
 wchar_t ch;
 size_t clen;





 if ((key = malloc(sizeof(wchar_t) * (strlen(string) + 1))) == ((void*)0))
  err(2, ((void*)0));
 readp = string;
 writep = key;
 while ((clen = mbrtowc(&ch, readp, MB_LEN_MAX, ((void*)0))) != 0) {
  if (clen == (size_t)-1 || clen == (size_t)-2)
   errc(2, EILSEQ, ((void*)0));
  if (fflag)
   ch = towlower(ch);
  if (!dflag || iswalnum(ch))
   *writep++ = ch;
  readp += clen;
 }
 *writep = L'\0';
 if (termchar != L'\0' && (writep = wcschr(key, termchar)) != ((void*)0))
  *++writep = L'\0';
 return (key);
}
