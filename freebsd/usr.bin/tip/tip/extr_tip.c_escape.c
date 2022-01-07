
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int e_char; int e_flags; int (* e_func ) (int) ;} ;
typedef TYPE_1__ esctable_t ;


 int EOF ;
 int ESCAPE ;
 int FD ;
 int PRIV ;
 int STRIP_PAR ;
 char character (int ) ;
 char* ctrl (char) ;
 TYPE_1__* etable ;
 int getchar () ;
 int parwrite (int ,char*,int) ;
 int printf (char*,char*) ;
 int stub1 (int) ;
 scalar_t__ uid ;
 int value (int ) ;

__attribute__((used)) static int
escape(void)
{
 int gch;
 esctable_t *p;
 char c = character(value(ESCAPE));

 gch = getchar();
 if (gch == EOF)
  return (EOF);
 gch = gch & STRIP_PAR;
 for (p = etable; p->e_char; p++)
  if (p->e_char == gch) {
   if ((p->e_flags&PRIV) && uid)
    continue;
   printf("%s", ctrl(c));
   (*p->e_func)(gch);
   return (0);
  }

 if (c != gch)
  parwrite(FD, &c, 1);
 return (gch);
}
