
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ prog_t ;
typedef int FILE ;


 char* CRUNCH_VERSION ;
 int MAXLINELEN ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,...) ;
 int goterror ;
 char* infilename ;
 char* outhdrname ;
 char* outmkname ;
 int prog_makefile_rules (int *,TYPE_1__*) ;
 TYPE_1__* progs ;
 int snprintf (char*,int,char*,char*) ;
 int status (char*) ;
 int top_makefile_rules (int *) ;
 int warn (char*,char*) ;

void
gen_output_makefile(void)
{
 prog_t *p;
 FILE *outmk;
 char line[MAXLINELEN];

 snprintf(line, MAXLINELEN, "generating %s", outmkname);
 status(line);

 if ((outmk = fopen(outmkname, "w")) == ((void*)0)) {
  warn("%s", outmkname);
  goterror = 1;
  return;
 }

 fprintf(outmk, "# %s - generated from %s by crunchgen %s\n\n",
     outmkname, infilename, CRUNCH_VERSION);

 if (outhdrname[0] != '\0')
  fprintf(outmk, ".include \"%s\"\n", outhdrname);

 top_makefile_rules(outmk);
 for (p = progs; p != ((void*)0); p = p->next)
  prog_makefile_rules(outmk, p);

 fprintf(outmk, "\n# ========\n");
 fclose(outmk);
}
