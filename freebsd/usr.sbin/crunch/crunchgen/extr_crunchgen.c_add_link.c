
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int links; } ;
typedef TYPE_1__ prog_t ;


 int add_string (int *,char*) ;
 int curfilename ;
 TYPE_1__* find_prog (char*) ;
 int goterror ;
 int linenum ;
 scalar_t__ list_mode ;
 int printf (char*,char*) ;
 int warnx (char*,int ,int ,char*) ;

void
add_link(int argc, char **argv)
{
 int i;
 prog_t *p = find_prog(argv[1]);

 if (p == ((void*)0)) {
  warnx("%s:%d: no prog %s previously declared, skipping link",
      curfilename, linenum, argv[1]);
  goterror = 1;
  return;
 }

 for (i = 2; i < argc; i++) {
  if (list_mode)
   printf("%s\n",argv[i]);

  add_string(&p->links, argv[i]);
 }
}
