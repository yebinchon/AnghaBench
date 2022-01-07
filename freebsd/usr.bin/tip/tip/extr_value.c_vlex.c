
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int v_access; scalar_t__ v_name; } ;
typedef TYPE_1__ value_t ;


 int READ ;
 scalar_t__ col ;
 scalar_t__ equal (char*,char*) ;
 int printf (char*) ;
 scalar_t__ vaccess (int ,int ) ;
 char* vinterp (char*,char) ;
 int vprint (TYPE_1__*) ;
 TYPE_1__* vtable ;
 int vtoken (char*) ;

void
vlex(char *s)
{
 value_t *p;
 char *cp;

 if (equal(s, "all")) {
  for (p = vtable; p->v_name; p++)
   if (vaccess(p->v_access, READ))
    vprint(p);
 } else {
  do {
   if ((cp = vinterp(s, ' ')))
    cp++;
   vtoken(s);
   s = cp;
  } while (s);
 }
 if (col > 0) {
  printf("\r\n");
  col = 0;
 }
}
