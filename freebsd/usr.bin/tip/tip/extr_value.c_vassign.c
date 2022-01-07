
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int v_type; char* v_value; int v_access; } ;
typedef TYPE_1__ value_t ;



 int CHANGED ;

 int ENVIRON ;
 int INIT ;
 char* NOSTR ;


 int TMASK ;
 int WRITE ;
 int boolean (char*) ;
 char character (char*) ;
 int equal (char*,char*) ;
 int free (char*) ;
 int number (char*) ;
 int printf (char*) ;
 int setboolean (char*,int) ;
 int setcharacter (char*,char) ;
 int setnumber (char*,int ) ;
 char* strdup (char*) ;
 int vaccess (int ,int ) ;

__attribute__((used)) static void
vassign(value_t *p, char *v)
{
 if (!vaccess(p->v_access, WRITE)) {
  printf("access denied\r\n");
  return;
 }

 switch (p->v_type&TMASK) {
 case 128:
  if (p->v_value && equal(p->v_value, v))
   return;
  if (!(p->v_type&(ENVIRON|INIT)))
   free(p->v_value);
  if ((p->v_value = strdup(v)) == NOSTR) {
   printf("out of core\r\n");
   return;
  }
  p->v_type &= ~(ENVIRON|INIT);
  break;
 case 129:
  if (number(p->v_value) == number(v))
   return;
  setnumber(p->v_value, number(v));
  break;
 case 131:
  if (boolean(p->v_value) == (*v != '!'))
   return;
  setboolean(p->v_value, (*v != '!'));
  break;
 case 130:
  if (character(p->v_value) == *v)
   return;
  setcharacter(p->v_value, *v);
 }
 p->v_access |= CHANGED;
}
