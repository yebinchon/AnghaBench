
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ prog_t ;


 int fillin_program (TYPE_1__*) ;
 int fprintf (int ,char*,char*,char*) ;
 int gen_output_cfile () ;
 int gen_output_makefile () ;
 int gen_specials_cache () ;
 char* outmkname ;
 char* path_make ;
 TYPE_1__* progs ;
 int remove_error_progs () ;
 int status (char*) ;
 int stderr ;

void
gen_outputs(void)
{
 prog_t *p;

 for (p = progs; p != ((void*)0); p = p->next)
  fillin_program(p);

 remove_error_progs();
 gen_specials_cache();
 gen_output_cfile();
 gen_output_makefile();
 status("");
 fprintf(stderr,
     "Run \"%s -f %s\" to build crunched binary.\n",
     path_make, outmkname);
}
