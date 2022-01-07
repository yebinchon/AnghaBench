
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;


 int errx (int,char*) ;

__attribute__((used)) static int
tr(wchar_t *arg)
{
 int cnt;
 wchar_t ch, *p;

 for (p = arg, cnt = 0; (ch = *p++); ++arg, ++cnt)
  if (ch == '\\')
   switch(ch = *p++) {
   case 'n':
    *arg = '\n';
    break;
   case 't':
    *arg = '\t';
    break;
   case '0':
    *arg = '\0';
    break;
   default:
    *arg = ch;
    break;
  } else
   *arg = ch;

 if (!cnt)
  errx(1, "no delimiters specified");
 return(cnt);
}
