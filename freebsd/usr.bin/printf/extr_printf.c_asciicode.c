
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int mbstate_t ;
typedef int mbs ;


 int MB_LEN_MAX ;
 scalar_t__** gargv ;
 int mbrtowc (int*,scalar_t__*,int ,int *) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int
asciicode(void)
{
 int ch;
 wchar_t wch;
 mbstate_t mbs;

 ch = (unsigned char)**gargv;
 if (ch == '\'' || ch == '"') {
  memset(&mbs, 0, sizeof(mbs));
  switch (mbrtowc(&wch, *gargv + 1, MB_LEN_MAX, &mbs)) {
  case (size_t)-2:
  case (size_t)-1:
   wch = (unsigned char)gargv[0][1];
   break;
  case 0:
   wch = 0;
   break;
  }
  ch = wch;
 }
 ++gargv;
 return (ch);
}
