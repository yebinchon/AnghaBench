
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* cchar; char* fmt; int flags; } ;
typedef TYPE_1__ PR ;


 int F_BPAD ;
 scalar_t__ strchr (char const*,char) ;

void
bpad(PR *pr)
{
 static char const *spec = " -0+#";
 char *p1, *p2;





 pr->flags = F_BPAD;
 pr->cchar[0] = 's';
 pr->cchar[1] = '\0';
 for (p1 = pr->fmt; *p1 != '%'; ++p1);
 for (p2 = ++p1; *p1 && strchr(spec, *p1); ++p1);
 while ((*p2++ = *p1++));
}
