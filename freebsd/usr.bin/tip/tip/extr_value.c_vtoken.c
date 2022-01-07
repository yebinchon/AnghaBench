
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int v_type; int v_access; } ;
typedef TYPE_1__ value_t ;


 TYPE_1__* NOVAL ;
 int NUMBER ;
 int READ ;
 scalar_t__ atoi (char*) ;
 char* expand (char*) ;
 int printf (char*,char*) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ vaccess (int ,int ) ;
 int vassign (TYPE_1__*,char*) ;
 TYPE_1__* vlookup (char*) ;
 int vprint (TYPE_1__*) ;

__attribute__((used)) static void
vtoken(char *s)
{
 value_t *p;
 char *cp;

 if ((cp = strchr(s, '='))) {
  *cp = '\0';
  if ((p = vlookup(s))) {
   cp++;
   if (p->v_type&NUMBER)
    vassign(p, (char *)(intptr_t)atoi(cp));
   else {
    if (strcmp(s, "record") == 0)
     cp = expand(cp);
    vassign(p, cp);
   }
   return;
  }
 } else if ((cp = strchr(s, '?'))) {
  *cp = '\0';
  if ((p = vlookup(s)) && vaccess(p->v_access, READ)) {
   vprint(p);
   return;
  }
 } else {
  if (*s != '!')
   p = vlookup(s);
  else
   p = vlookup(s+1);
  if (p != NOVAL) {
   vassign(p, s);
   return;
  }
 }
 printf("%s: unknown variable\r\n", s);
}
