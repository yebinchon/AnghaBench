
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* srcdir; char* name; char* objdir; scalar_t__ objpaths; scalar_t__ objs; struct TYPE_3__* next; } ;
typedef TYPE_1__ prog_t ;
typedef int FILE ;


 char* CRUNCH_VERSION ;
 int MAXLINELEN ;
 char* cachename ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,...) ;
 int goterror ;
 char* infilename ;
 int output_strlst (int *,scalar_t__) ;
 TYPE_1__* progs ;
 int snprintf (char*,int,char*,char*) ;
 int status (char*) ;
 int warn (char*,char*) ;

void
gen_specials_cache(void)
{
 FILE *cachef;
 prog_t *p;
 char line[MAXLINELEN];

 snprintf(line, MAXLINELEN, "generating %s", cachename);
 status(line);

 if ((cachef = fopen(cachename, "w")) == ((void*)0)) {
  warn("%s", cachename);
  goterror = 1;
  return;
 }

 fprintf(cachef, "# %s - parm cache generated from %s by crunchgen "
     " %s\n\n",
     cachename, infilename, CRUNCH_VERSION);

 for (p = progs; p != ((void*)0); p = p->next) {
  fprintf(cachef, "\n");
  if (p->srcdir)
   fprintf(cachef, "special %s srcdir %s\n",
       p->name, p->srcdir);
  if (p->objdir)
   fprintf(cachef, "special %s objdir %s\n",
       p->name, p->objdir);
  if (p->objs) {
   fprintf(cachef, "special %s objs", p->name);
   output_strlst(cachef, p->objs);
  }
  if (p->objpaths) {
   fprintf(cachef, "special %s objpaths", p->name);
   output_strlst(cachef, p->objpaths);
  }
 }
 fclose(cachef);
}
