
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_USAGE ;
 int errx (int ,char*,char const*) ;
 long strtol (char const*,char**,int ) ;

__attribute__((used)) static size_t
get_positive(const char *s, const char *err_mess, int fussyP)
{
 char *t;
 long result = strtol(s, &t, 0);

 if (*t) {
  if (fussyP)
   goto Lose;
  else
   return 0;
 }
 if (result <= 0) {
Lose: errx(EX_USAGE, "%s", err_mess);
 }
 return (size_t)result;
}
