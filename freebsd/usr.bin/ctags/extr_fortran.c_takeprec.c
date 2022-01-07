
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isdigit (char) ;
 scalar_t__ isspace (char) ;
 char* lbp ;

__attribute__((used)) static void
takeprec(void)
{
 for (; isspace(*lbp); ++lbp)
  continue;
 if (*lbp == '*') {
  for (++lbp; isspace(*lbp); ++lbp)
   continue;
  if (!isdigit(*lbp))
   --lbp;
  else
   while (isdigit(*++lbp))
    continue;
 }
}
