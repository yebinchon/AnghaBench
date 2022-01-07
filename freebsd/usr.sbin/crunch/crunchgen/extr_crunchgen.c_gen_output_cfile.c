
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* str; struct TYPE_4__* next; } ;
typedef TYPE_1__ strlst_t ;
struct TYPE_5__ {char* ident; char* name; TYPE_1__* links; struct TYPE_5__* next; } ;
typedef TYPE_2__ prog_t ;
typedef int FILE ;


 char* CRUNCH_VERSION ;
 int MAXLINELEN ;
 char** crunched_skel ;
 char* execfname ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,...) ;
 int goterror ;
 char* infilename ;
 char* outcfname ;
 TYPE_2__* progs ;
 int snprintf (char*,int,char*,char*) ;
 int status (char*) ;
 int warn (char*,char*) ;

void
gen_output_cfile(void)
{
 char **cp;
 FILE *outcf;
 prog_t *p;
 strlst_t *s;
 char line[MAXLINELEN];

 snprintf(line, MAXLINELEN, "generating %s", outcfname);
 status(line);

 if((outcf = fopen(outcfname, "w")) == ((void*)0)) {
  warn("%s", outcfname);
  goterror = 1;
  return;
 }

 fprintf(outcf,
     "/* %s - generated from %s by crunchgen %s */\n",
     outcfname, infilename, CRUNCH_VERSION);

 fprintf(outcf, "#define EXECNAME \"%s\"\n", execfname);
 for (cp = crunched_skel; *cp != ((void*)0); cp++)
  fprintf(outcf, "%s\n", *cp);

 for (p = progs; p != ((void*)0); p = p->next)
  fprintf(outcf, "extern int _crunched_%s_stub();\n", p->ident);

 fprintf(outcf, "\nstruct stub entry_points[] = {\n");
 for (p = progs; p != ((void*)0); p = p->next) {
  fprintf(outcf, "\t{ \"%s\", _crunched_%s_stub },\n",
      p->name, p->ident);
  for (s = p->links; s != ((void*)0); s = s->next)
   fprintf(outcf, "\t{ \"%s\", _crunched_%s_stub },\n",
       s->str, p->ident);
 }

 fprintf(outcf, "\t{ EXECNAME, crunched_main },\n");
 fprintf(outcf, "\t{ NULL, NULL }\n};\n");
 fclose(outcf);
}
